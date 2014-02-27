ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :domain => 'gmail.com',
  :user_name => 'busation@gmail.com',
  :password => 'lkys_123',
  :enable_starttls_auto => true
}