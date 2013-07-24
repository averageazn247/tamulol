class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :topic
      t.text :body
      t.integer :creator_id
      t.date :created

      t.timestamps
    end
  end
end
