class DropTablePractice < ActiveRecord::Migration[7.1]
  def change
    drop_table :practice_tables
  end
end
