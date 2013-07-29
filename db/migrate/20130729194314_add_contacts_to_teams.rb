class AddContactsToTeams < ActiveRecord::Migration
  def change
     add_column :teams, :sec_name, :string
    add_column :teams, :sec_play, :string
    add_column :teams, :sec_email, :string
    add_column :teams, :third_name, :string
    add_column :teams, :third_play, :string
    add_column :teams, :third_email, :string
  end
end
