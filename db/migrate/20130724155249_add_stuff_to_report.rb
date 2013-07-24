class AddStuffToReport < ActiveRecord::Migration
  def change
    add_column :reports, :game1, :string
    add_column :reports, :game2, :string
    add_column :reports, :game3, :string
  end
end
