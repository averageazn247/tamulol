class CreateRaids < ActiveRecord::Migration
  def change
    create_table :raids do |t|
      t.string :name1
      t.string :player1
      t.string :name2
      t.string :player2
      t.string :name3
      t.string :player3
      t.string :name4
      t.string :player4
      t.string :name5
      t.string :player5
      t.string :player6
      t.string :name6
      t.string :name7
      t.string :player7
      t.string :name8
      t.string :player8
      t.string :name9
      t.string :player9
      t.string :name10
      t.string :player10

      t.timestamps
    end
  end
end
