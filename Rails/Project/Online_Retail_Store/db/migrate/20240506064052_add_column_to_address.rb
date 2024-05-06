class AddColumnToAddress < ActiveRecord::Migration[7.1]
  def change
    add_reference :addresses, :customers,  foreign_key:true
  end
end
