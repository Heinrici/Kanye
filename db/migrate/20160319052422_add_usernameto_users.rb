class AddUsernametoUsers < ActiveRecord::Migration
  def change #anything here gets translated to SQL
    add_column :users, :username, :string #add column usersnames to users (devise) table. 
    add_index :users, :username, unique:true #index username for quick use, and make sure that it is always unique.
  end
end
