class Report < ActiveRecord::Base
  attr_accessible :creator_id, :dayof, :desc, :teams, :winner
end
