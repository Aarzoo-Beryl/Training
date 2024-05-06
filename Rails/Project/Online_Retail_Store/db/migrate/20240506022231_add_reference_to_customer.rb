class AddReferenceToCustomer < ActiveRecord::Migration[7.1]
  def change
    add_reference :customers, :addresses, foreign_key:true
  end
end
