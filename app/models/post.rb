class Post < ActiveRecord::Base
  attr_accessible :body, :created, :creator_id, :topic
end
