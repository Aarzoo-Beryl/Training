class AddColumnTransaction < ActiveRecord::Migration[7.1]
  def change
    add_column :transactions, :late_submittion_fine, :decimal , precision: 5, scale: 2
  end
end
