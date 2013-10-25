class AddUrlToRaid < ActiveRecord::Migration
  def change
    add_column :raids, :url, :string
  end
end
