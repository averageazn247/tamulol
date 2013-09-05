class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :dayof
      t.text :desc
      t.time :start

      t.timestamps
    end
  end
end
