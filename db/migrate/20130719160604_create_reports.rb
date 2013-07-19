class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :dayof
      t.string :winner
      t.string :teams
      t.integer :creator_id
      t.text :desc

      t.timestamps
    end
  end
end
