class AddColumnTotalProductsInOrderToModelOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :products_count, :integer, default: 0
  end
end
