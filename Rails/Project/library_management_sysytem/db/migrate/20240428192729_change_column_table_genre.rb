class ChangeColumnTableGenre < ActiveRecord::Migration[7.1]
  def change
    change_column :table_genres, :total_books_available, :string
  end
end
