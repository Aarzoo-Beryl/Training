class CreateOrderSummaries < ActiveRecord::Migration[7.1]
  def change
    create_table :order_summaries do |t|

      t.timestamps
    end
  end
end
