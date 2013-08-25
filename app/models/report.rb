class Report < ActiveRecord::Base
  attr_accessible :creator_id, :dayof, :desc, :teams, :winner ,:game1 ,:game2, :game3
   validates :dayof, presence: true 
     validates :winner, presence: true 
       validates :teams, presence: true 
       mount_uploader :game1, ImageUploader
       mount_uploader :game2, ImageUploader
       mount_uploader :game3, ImageUploader
       
       
       
end
