class CreateAndDropViewReversible < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      direction.up do
        # create a distributors view
        execute <<-SQL
          CREATE VIEW book_genre AS
          SELECT title, genre
          FROM books;
        SQL
      end
      direction.down do
        execute <<-SQL
          DROP VIEW book_genre;
        SQL
      end
    end
  end
end
