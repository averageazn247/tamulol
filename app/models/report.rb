class Report < ActiveRecord::Base
  attr_accessible :creator_id, :dayof, :desc, :teams, :winner ,:avatar1 ,:avatar2, :avatar3 
   validates :dayof, presence: true 
     validates :winner, presence: true 
       validates :teams, presence: true 


         has_attached_file :avatar1, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }
           has_attached_file :avatar2, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }
           has_attached_file :avatar3, styles: {
    thumb: '200x200>',
    square: '200x200#',
    medium: '300x300>'
  }     
       has_attached_file :avatar1,
    :path => ':class/:attachment/:id_partition/:style/:filename',
    :url => ":s3_domain_url"
    has_attached_file :avatar2,
    :path => ':class/:attachment/:id_partition/:style/:filename',
    :url => ":s3_domain_url"
    has_attached_file :avatar3,
    :path => ':class/:attachment/:id_partition/:style/:filename',
    :url => ":s3_domain_url"
      report.avatar1.url #=> http://bucket.s3.amazonaws.com/... 
end
