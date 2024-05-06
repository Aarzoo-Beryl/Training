class AddReferenceToBills < ActiveRecord::Migration[7.1]
  def change
    add_reference :bills, :customers, foreign_key:true
  end
end
