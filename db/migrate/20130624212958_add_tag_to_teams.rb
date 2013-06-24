class AddTagToTeams < ActiveRecord::Migration
  def change
   add_column :teams, :tag, :string 
  end
end
