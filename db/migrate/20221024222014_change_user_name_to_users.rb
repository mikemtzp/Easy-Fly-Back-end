class ChangeUserNameToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :username, :string, unique: true, index: true
  end
end
