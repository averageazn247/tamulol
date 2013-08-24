class AddTeamToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :teamelo, :string
  end
end
