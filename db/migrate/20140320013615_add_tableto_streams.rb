class AddTabletoStreams < ActiveRecord::Migration
  def change
        add_column :streams, :name, :text
          
        add_column :streams, :user, :string
       add_column :streams, :link, :text
    add_column :streams, :time, :text
      add_column :streams, :twitch_account, :text
                     add_column :streams, :info, :text  
  end
end
