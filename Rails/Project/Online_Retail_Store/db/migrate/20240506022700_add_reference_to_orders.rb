class AddReferenceToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :customers, foreign_key:true
  end
end
