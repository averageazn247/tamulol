class Report < ActiveRecord::Base
  attr_accessible :creator_id, :game3, :dayof, :desc, :teams, :winner ,:avatar1 ,:avatar2, :avatar3 , :name, :game1, :game2, :team1 , :team2
 

         has_attached_file :avatar1, styles: {
    thumb: '400x400>',
    square: '800x800#',
    medium: '1000x1000>'
  }
           has_attached_file :avatar2, styles: {
    thumb: '400x400>',
    square: '800x800#',
    medium: '1000x1000>'
  }
           has_attached_file :avatar3, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '1000x1000>'
  }     

end
