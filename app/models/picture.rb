class Picture < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible  :name, :image ,:gallery_id
  belongs_to :gallery
  mount_uploader :image, ImageUploader
end
