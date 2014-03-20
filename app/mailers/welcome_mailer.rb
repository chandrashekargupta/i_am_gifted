class WelcomeMailer < ActionMailer::Base
 #default from: "from@example.com"
  def registration_confirmation(user)
    @user = user
    mail :to => "#{user.email}", :from => "chandrashekar@ostryalabs.com", :subject => "subject line"
  end	
end
