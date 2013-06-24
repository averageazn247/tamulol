class AddTeamidToUsers < ActiveRecord::Migration
  def change
    add_column :users,  :team_id, :integer

     # add_index :relationships, :team_id
     # add_index :relationships, [:team_id], unique: true
  end
end
