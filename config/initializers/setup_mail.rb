ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
		:address 	=> "smtp.gmail.com",
		:port		=> 587,
		:domain		=> 'ostryalabs.com',
		:user_name 	=> 'chandrashekar@ostryalabs.com',
		:password	=> 'ParvathI4*312',
		:authentication => 'plain',
		:enable_starttls_auto =>true 
}
