class RemoveRefrencesFromOrders < ActiveRecord::Migration[7.1]
  def change
    remove_reference :orders, :customers, foriegn_key: true
  end
end
