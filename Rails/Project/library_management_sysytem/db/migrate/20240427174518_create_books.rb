class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publication_year
      t.integer :quantity_available

      t.timestamps
    end
  end
end
