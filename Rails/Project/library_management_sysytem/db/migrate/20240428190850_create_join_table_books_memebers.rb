class CreateJoinTableBooksMemebers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :books, :memebers ,column_options: { null: true }, table_name: :borrow_log
  end
end
