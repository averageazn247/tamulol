class Report < ActiveRecord::Base
  attr_accessible :creator_id, :dayof, :desc, :teams, :winner ,:avatar1 ,:avatar2, :avatar3 , :name, :game1, :game2, :team1 , :team2
   validates :dayof, presence: true 
     validates :winner, presence: true 
       validates :teams, presence: true 


         has_attached_file :avatar1, styles: {
    thumb: '400x400>',
    square: '800x800#',
    medium: '800x800>'
  }
           has_attached_file :avatar2, styles: {
    thumb: '400x400>',
    square: '800x800#',
    medium: '800x800>'
  }
           has_attached_file :avatar3, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }     

end
