class AddReferenceOfCustomerAndProductToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :customer, null: false, foreign_key: true
    add_reference :reviews, :product, null: false, foreign_key: true
  end
end
