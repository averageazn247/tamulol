class Team < ActiveRecord::Base
  attr_accessible :name, :teamcapt, :bio, :email1, :player1, :name2, :player2, :email2,:name3, :player3, :email3
attr_accessible :name4, :player4, :email4, :name5, :player5, :email5, :name6, :player6, :email6, :tag
attr_accessible :name7, :player7, :email7 ,:user_id, :status
 
  belongs_to :user

  def active?
  status == 'active'
end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
