class RemoveRefrencesFromPayments < ActiveRecord::Migration[7.1]
  def change
    # remove_reference :payments, :orders, foriegn_key: true
    # remove_reference :payments, :payment_types, foriegn_key: true
     remove_reference :payments, :customers, foriegn_key: true

  end
end
