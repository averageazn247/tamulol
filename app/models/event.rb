class Event < ActiveRecord::Base
  attr_accessible :dayof, :desc, :name, :start, :type
end
