class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :location
      t.string :profile_picture

      t.timestamps
    end
  end
end
