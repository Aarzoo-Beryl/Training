class RemoveColumnFromPayments < ActiveRecord::Migration[7.1]
  def change
    remove_column :payments, :payment_type, :string
  end
end
