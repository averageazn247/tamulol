class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :topic
      t.text :mess

      t.timestamps
    end
  end
end
