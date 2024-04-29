class ChangeColumnDefaultBooks < ActiveRecord::Migration[7.1]
  def change
    change_column_default :books, :quantity_available, from: nil, to: 0
  end
end
