class Team < ActiveRecord::Base
  attr_accessible :name, :teamcapt, :bio, :email1, :player1, :name2, :player2, :email2,:name3, :player3, :email3
attr_accessible :name4, :player4, :email4, :name5, :player5, :email5, :name6, :player6, :email6, :tag
attr_accessible :name7, :player7, :email7 ,:user_id, :status, :verify, :tos ,:sec_name, :sec_email, :sec_play
attr_accessible :third_name, :third_email, :third_play, :teamelo
validates_acceptance_of :tos, :allow_nil => false, :accept => true, :on => :create
  belongs_to :user
  #if (team.email1.include? "tamu.edu" or team.email1.include? "blinn.edu") and (team.email2.include? "tamu.edu" or team.email2.include? "blinn.edu")  and (team.email3.include? "tamu.edu" or team.email3.include? "blinn.edu" ) and (team.email4.include? "tamu.edu" or team.email4.include? "blinn.edu") & ( team.email5.include? "tamu.edu" or team.email5.include? "blinn.edu" )  %>

  def setteam(team,user)
    user.team_id=team.id
  end
 
 def active_or_email?
    status.include?('email') || active?
  end
  def active?
  status == 'active'
end
  def init
      if self.new_record? && self.type_id.nil?
        self.email2 = ""
         self.email3 = ""
          self.email4 = ""
           self.email5 = ""
      end
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
