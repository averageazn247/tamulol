class RemoveRaidFromUsers < ActiveRecord::Migration
  def change
     remove_column :users, :raid
  end
end
