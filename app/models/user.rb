class User < ActiveRecord::Base
 
     attr_accessible :name, :email, :password, :password_confirmation,  :phone
  has_secure_password
  has_one :team
  before_save { |user| user.email = email.downcase }
  
end
