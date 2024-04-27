class CreateMemebers < ActiveRecord::Migration[7.1]
  def change
    create_table :memebers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone_number
      t.string :membership_status

      t.timestamps
    end
  end
end
