class AddReferenceToPayments < ActiveRecord::Migration[7.1]
  def change
    add_reference :payments, :bills, foreign_key:true
    add_reference :payments, :customers, foreign_key:true
    add_reference :payments, :payment_types, foreign_key:true
  end
end
