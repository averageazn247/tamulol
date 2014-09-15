class AddCasualToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :casual, :string
  end
end
