class AddReferenceToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :products, foreign_key:true
    add_reference :reviews, :customers, foreign_key:true
  end
end
