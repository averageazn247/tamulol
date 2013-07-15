class AddCreatorToMessages < ActiveRecord::Migration
  def change
    
    add_column :messages, :sender, :string
  end
end
