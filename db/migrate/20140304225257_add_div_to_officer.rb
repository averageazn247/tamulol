class AddDivToOfficer < ActiveRecord::Migration
  def change
    add_column :officers, :div, :string
  end
end
