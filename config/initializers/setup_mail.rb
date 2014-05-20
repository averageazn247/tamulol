ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "Khoa.mail.bot@gmail.com",
  :password             => "pizza9804",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
