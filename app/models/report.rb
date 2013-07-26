class Report < ActiveRecord::Base
  attr_accessible :creator_id, :dayof, :desc, :teams, :winner ,:game1 ,:game2, :game3

     validates :winner, presence: true 
       validates :teams, presence: true 
       
end
