class AddReferenceTransactions < ActiveRecord::Migration[7.1]
  def change
    add_reference :transactions, :books, foreign_key:true
    add_reference :transactions, :memebers, foreign_key:true
  end
end
