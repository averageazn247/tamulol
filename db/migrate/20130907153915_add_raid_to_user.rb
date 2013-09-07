class AddRaidToUser < ActiveRecord::Migration
  def change
     add_column :users, :raid, :string
  end
end
