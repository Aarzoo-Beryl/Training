class CreateSellers < ActiveRecord::Migration[7.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
