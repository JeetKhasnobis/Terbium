class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method is translated into SQL Code and modified to database currently SQLLite.
  add_column :users, :username, :string # Add new column to table users called username of type string
  add_index :users, :username, unique: true # First index usernames for rapid lookup. Second ensure usernames are always unique.
  
  end
end
