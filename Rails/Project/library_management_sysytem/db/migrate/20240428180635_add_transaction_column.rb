class AddTransactionColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :transactions, :late_submittion_fine, :string
  end
end
