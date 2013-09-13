class User < ActiveRecord::Base
 
     attr_accessible :name, :email, :password, :password_confirmation,  :phone , :team_id, :member, :raid
  

  has_many :teams
  has_many :microposts
  has_many :authorizations
validates :name, :email, :presence => true
 

  before_save { |user| user.email = email.downcase unless user.email.blank? }
  # before_save :create_remember_token
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#   
  # validates :email, presence:   true,
                    # format:     { with: VALID_EMAIL_REGEX },
                    # uniqueness: { case_sensitive: false }
  
  before_save :create_remember_token
     before_create { generate_token(:auth_token) }
  
  def send_email_confirm(user)
    UserMailer.registration_confirmation(user)
  end
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  def setteam(team_id,user)
    user.team_id=team_id
  end
 
  def getteam(user)
    teams.find_by_user_id(user.id)
    
    
  end

def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email= auth.info.email
      user.phone= auth.info.phone
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
def hasteam?(user_id)
  gotteam=false
  teams=Team.all
  teams.each do |team|
    if self.id==    team.user_id
      gotteam=true
    end
  end
  return gotteam
end
def send_password_reset
  generate_token(:password_reset_token)
  self.password_reset_sent_at = Time.zone.now
  save!
  UserMailer.password_reset(self).deliver
end
def create_remember_token
  self.remember_token = SecureRandom.urlsafe_base64
end
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

end
