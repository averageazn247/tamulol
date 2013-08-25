class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.text :diamond
      t.text :plat
      t.text :gold
      t.text :silver
      t.text :bronze
      t.text :unranked
      t.timestamps
    end
  end
end
