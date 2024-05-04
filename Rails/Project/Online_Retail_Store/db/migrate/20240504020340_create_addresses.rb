class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.integer :house_number
      t.integer :sector
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode

      t.timestamps
    end
  end
end
