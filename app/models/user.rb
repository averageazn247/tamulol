class User < ActiveRecord::Base
 
     attr_accessible :name, :email, :password, :password_confirmation,  :phone , :team_id
  has_secure_password
  has_many :teams
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
     before_create { generate_token(:auth_token) }
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
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

end
