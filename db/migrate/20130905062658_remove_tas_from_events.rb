class RemoveTasFromEvents < ActiveRecord::Migration
  def change
 add_column :events, :group, :string
 remove_column :events, :type 
  end
end
