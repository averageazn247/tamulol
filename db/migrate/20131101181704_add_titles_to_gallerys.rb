class AddTitlesToGallerys < ActiveRecord::Migration
  def change
    add_column :galleries, :title, :string
    add_column :galleries, :name, :string
  end
end
