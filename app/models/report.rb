class Report < ActiveRecord::Base
  attr_accessible :creator_id, :dayof, :desc, :teams, :winner ,:game1 ,:game2, :game3
   validates :dayof, presence: true 
     validates :winner, presence: true 
       validates :teams, presence: true 
       mount_uploader :game1, ImageUploader
       mount_uploader :game2, ImageUploader
       mount_uploader :game3, ImageUploader
         has_attached_file :game1, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }
           has_attached_file :game2, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }
           has_attached_file :game3, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }     
       
       
end
