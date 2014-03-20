class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, 
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,:timeoutable,  :authentication_keys => [:login]
  
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
  validates :username,
  :uniqueness => {
    :case_sensitive => false
  }

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def approved_user
    self.status == 'approved'
  end
  
  def active_for_authentication?
    super && approved_user
  end
end

