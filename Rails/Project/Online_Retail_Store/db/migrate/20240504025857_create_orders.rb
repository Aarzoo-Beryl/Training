class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :date
      t.string :shipping_address
      t.float :total_order

      t.timestamps
    end
  end
end
