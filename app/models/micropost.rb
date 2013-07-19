class Micropost < ActiveRecord::Base
  attr_accessible :content, :topic, :user_id
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true 
end
