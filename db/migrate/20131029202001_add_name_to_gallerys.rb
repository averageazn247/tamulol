class AddNameToGallerys < ActiveRecord::Migration
  def change
    add_column :galleries, :name, :string
    add_column :galleries, :person, :string
    add_column :pictures, :gallery_id, :integer 
  end
end
