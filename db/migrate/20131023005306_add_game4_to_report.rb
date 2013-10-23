class AddGame4ToReport < ActiveRecord::Migration
  def change
    add_column :reports, :team1, :string
    add_column :reports, :team2, :string
  end
end
