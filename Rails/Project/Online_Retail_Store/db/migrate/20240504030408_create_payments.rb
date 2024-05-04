class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :date
      t.string :payment_type
      t.string :status

      t.timestamps
    end
  end
end
