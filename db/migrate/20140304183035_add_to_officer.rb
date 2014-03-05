class AddToOfficer < ActiveRecord::Migration
  def change
    
     add_column :officers, :title, :string
        add_column :officers, :name, :string
           add_column :officers, :contact, :text
              add_column :officers, :pic, :text
  end
end
