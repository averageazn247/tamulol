class AddGamesToReport < ActiveRecord::Migration
  def self.up
    add_attachment :reports, :avatar1
    add_attachment :reports, :avatar2
    add_attachment :reports, :avatar3
    
  end

  def self.down
    remove_attachment :reports, :avatar1
     remove_attachment :reports, :avatar2
      remove_attachment :reports, :avatar3
  end
end
