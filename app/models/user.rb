class User < ActiveRecord::Base
 
     attr_accessible :name, :email, :password, :password_confirmation,  :phone , :team_id
  has_secure_password
  has_many :teams
  has_many :relationships, foreign_key: "team_
  id", dependent: :destroy
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
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
  def setteam(team,user)
    user.team_id=team.id
  end
  def getteam(user)
    teams.find_by_user_id(user.id)
    
    
  end

def hasteam?(user)
  relationships.find_by_user_id
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
