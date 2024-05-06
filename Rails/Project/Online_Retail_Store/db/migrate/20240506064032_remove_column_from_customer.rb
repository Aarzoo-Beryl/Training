class RemoveColumnFromCustomer < ActiveRecord::Migration[7.1]
  def change
    remove_reference :customers, :addresses, foreign_key:true
  end
end
