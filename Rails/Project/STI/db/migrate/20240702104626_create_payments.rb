class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.references :payable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
