class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :productable_type
      t.integer :productable_id
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
