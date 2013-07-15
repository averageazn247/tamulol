class Micropost < ActiveRecord::Base
  attr_accessible :content, :topic, :user_id
  validates :user_id, presence: true 
end
