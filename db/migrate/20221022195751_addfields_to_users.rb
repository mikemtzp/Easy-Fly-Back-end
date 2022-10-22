class AddfieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :photo, :string
    add_column :users, :role, :string, default: "user"
    add_column :users, :username, :string
  end
end
