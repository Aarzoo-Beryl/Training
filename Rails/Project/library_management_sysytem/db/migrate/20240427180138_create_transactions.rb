class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.integer :book_id
      t.integer :memeber_id
      t.string :checkout_date
      t.string :return_date
      t.string :status

      t.timestamps
    end
  end
end
