class RevertMigration < ActiveRecord::Migration[7.1]
  def change
    revert do
      rename_column :practice_tables, :first_column, :phone_number
    end
  end
end
