class AddDescToOfficer < ActiveRecord::Migration
  def change
    add_column :officers, :desc, :text
  end
end
