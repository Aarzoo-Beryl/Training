class RemoveColumnTransactions < ActiveRecord::Migration[7.1]
  def change
    remove_column :transactions, :book_id, :integer
    remove_column :transactions, :memeber_id, :integer
  end
end
