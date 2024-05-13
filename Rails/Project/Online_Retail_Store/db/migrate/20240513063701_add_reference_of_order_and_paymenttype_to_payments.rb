class AddReferenceOfOrderAndPaymenttypeToPayments < ActiveRecord::Migration[7.1]
  def change
    add_reference :payments, :order, null: false, foreign_key: true
    add_reference :payments, :payment_type, null: false, foreign_key: true
    add_reference :payments, :customer, null: false, foreign_key: true

  end
end
