class AddVerToTeams < ActiveRecord::Migration
  def change
  add_column :teams, :verify, :boolean, default: false
  end
end
