class AddPassToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :string
   add_column :users, :admin, :boolean, default: false
    add_column :users, :password_disgest, :string
    add_column :users, :phone, :string
  end
end
