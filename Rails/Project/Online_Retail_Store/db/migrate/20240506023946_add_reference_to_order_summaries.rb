class AddReferenceToOrderSummaries < ActiveRecord::Migration[7.1]
  def change
    add_reference :order_summaries, :products , foreign_key: true
    add_reference :order_summaries, :bills , foreign_key: true
  end
end
