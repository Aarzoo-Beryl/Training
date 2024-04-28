class CreateJoinTableBooksMemebers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :books, :memebers ,column_options: { null: true }
  end
end
