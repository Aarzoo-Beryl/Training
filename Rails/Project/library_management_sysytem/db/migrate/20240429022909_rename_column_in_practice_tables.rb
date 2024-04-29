class RenameColumnInPracticeTables < ActiveRecord::Migration[7.1]
  def change
    rename_column :practice_tables, :first_column, :phone_number
  end
end
