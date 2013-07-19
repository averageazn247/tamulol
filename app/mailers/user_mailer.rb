class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  
 def khoa_mess(user,message)
   
   @user=user
   @message=message
   mail(:to => 'averageazn1337@gmail.com')
 end

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
  def send_mess(message,people)
    @message=message
    @people=people
    
  end
    def registration_confirmation(user)
   @user=user
   
    mail(:to => user.email, :subject => "Registered")
  end
  
end
