class RemoveForeighKeyToPractice < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :practice_tables, column: :first_column
  end
end
