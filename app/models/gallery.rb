class Gallery < ActiveRecord::Base
   attr_accessible :name,:title
   has_many :pictures
end
