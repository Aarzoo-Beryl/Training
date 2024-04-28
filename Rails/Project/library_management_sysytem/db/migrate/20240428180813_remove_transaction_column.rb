class RemoveTransactionColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :transactions, :late_submittion_fine ,:string
  end
end
