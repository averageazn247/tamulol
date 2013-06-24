class AddNamesToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :player1, :string
    add_column :teams, :player2, :string
    add_column :teams, :player3, :string
    add_column :teams, :player4, :string
    add_column :teams, :player5, :string
    add_column :teams, :player6, :string
    add_column :teams, :player7, :string
    add_column :teams, :name1, :string
    add_column :teams, :name2, :string
    add_column :teams, :name3, :string
    add_column :teams, :name4, :string
    add_column :teams, :name5, :string
    add_column :teams, :name6, :string
    add_column :teams, :name7, :string
    add_column :teams, :email1, :string
    add_column :teams, :email2, :string
    add_column :teams, :email3, :string
    add_column :teams, :email4, :string
    add_column :teams, :email5, :string
    add_column :teams, :email6, :string
    add_column :teams, :email7, :string 
    add_column :teams, :bio, :text
    
    
  end
end
