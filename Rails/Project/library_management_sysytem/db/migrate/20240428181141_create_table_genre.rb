class CreateTableGenre < ActiveRecord::Migration[7.1]
  def change
    create_table :table_genres do |t|
      t.string :name
      t.integer :total_books_available
      t.timestamps
    end
  end
end
