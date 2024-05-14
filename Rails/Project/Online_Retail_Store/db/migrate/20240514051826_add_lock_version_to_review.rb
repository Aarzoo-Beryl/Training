class AddLockVersionToReview < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :lock_version, :integer, default: 0 , null: false
  end
end
