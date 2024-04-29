class CreatePracticeTable < ActiveRecord::Migration[7.1]
  def change
    create_table :practice_tables, primary_key: [:first_column, :second_column] do |t|
      t.integer :first_column
      t.string :second_column
      t.timestamps
    end
  end
end
