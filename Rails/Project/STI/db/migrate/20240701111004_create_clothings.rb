class CreateClothings < ActiveRecord::Migration[7.1]
  def change
    create_table :clothings do |t|
      t.string :size
      t.string :material
      t.string :color

      t.timestamps
    end
  end
end
