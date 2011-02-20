class AddInfoToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end

  def self.down
    remove_column :users, :lastname
    remove_column :users, :firstname
    remove_column :users, :username
  end
end
