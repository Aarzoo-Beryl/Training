class AddReferencesToProductTable < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :brands, foreign_key:true
    add_reference :products, :sellers, foreign_key:true
    add_reference :products, :categories, foreign_key:true
  end
end
