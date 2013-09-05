class CreateMember < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :name
      t.boolean :paid
      t.string :year
      
      t.timestamps
    end
  end
end
