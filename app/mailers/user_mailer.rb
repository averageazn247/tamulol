class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def report_team(team)
    @team=team
    @email1=team.email1
    @email2=team.email2
        mail(:to => "tamuleague@yahoo.com", :subject => "Team " + @team.name + " has Registratered")
    
  end
  def report_match(teams,winner,date)
    @loser=teams
    @winner=winner
    @date= date
    mail(:to => "saari.matthew@gmail.com", :subject => "Game 1: "+ winner+ " Game 2: "+ teams)
  end
 def khoa_mess(user,message)
   
   @user=user
   @message=message
   mail(:to => 'averageazn1337@gmail.com',:subject =>message.topic)
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
