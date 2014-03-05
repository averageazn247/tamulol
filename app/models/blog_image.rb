class BlogImage < ActiveRecord::Base
  # attr_accessible :title, :body
  mount_uploader :image, ImageUploader
end
