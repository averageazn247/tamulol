class CreateTwitches < ActiveRecord::Migration
  def change
    create_table :twitches do |t|
  t.string :name
  t.text :twitch_account
  t.text :info
  t.text :link
  t.string :user
  
      t.timestamps
    end
  end
end
