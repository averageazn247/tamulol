class AddTosToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :tos, :boolean
  end
end
