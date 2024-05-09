class AddColumnTotalProductsInBillToModelBill < ActiveRecord::Migration[7.1]
  def change
    add_column :bills, :products_count, :integer, default: 0
  end
end
