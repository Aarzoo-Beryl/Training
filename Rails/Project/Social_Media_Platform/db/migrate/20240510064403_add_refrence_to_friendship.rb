class AddRefrenceToFriendship < ActiveRecord::Migration[7.1]
  def change
    remove_column :friendships, :friend
    add_foreign_key :friendships, :users, name: :friend
  end
end
