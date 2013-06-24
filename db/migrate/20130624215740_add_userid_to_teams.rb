class AddUseridToTeams < ActiveRecord::Migration
  def change
       add_column :teams,  :user_id, :integer
     # add_index :relationships, :user_id
     # add_index :relationships, [:user_id], unique: true
  end
  
end
