class AddForeighKeyToPractice < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :practice_tables, :books, column: :first_column
  end
end
