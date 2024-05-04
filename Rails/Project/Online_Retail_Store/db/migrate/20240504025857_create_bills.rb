class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.string :date
      t.string :shipping_address
      t.float :total_bill

      t.timestamps
    end
  end
end
