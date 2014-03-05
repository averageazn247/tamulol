class Mercury::Image < ActiveRecord::Base

  self.table_name = :mercury_images

  attr_accessible :image

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :storage => :s3,
  :s3_credentials => {
    :bucket => "tamulol2013",
    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
                    :path => ":attachment/:id/:style/:filename",
                    :url => ":attachment/:id/:style/:filename"}
                    
  delegate :url, :to => :image

  def serializable_hash(options = nil)
    options ||= {}
    options[:methods] ||= []
    options[:methods] << :url
    super(options)
  end

end
