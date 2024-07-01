class CreateElectronics < ActiveRecord::Migration[7.1]
  def change
    create_table :electronics do |t|
      t.string :brand
      t.string :model
      t.integer :warranty

      t.timestamps
    end
  end
end
