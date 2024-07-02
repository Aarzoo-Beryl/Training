class CreatePaypals < ActiveRecord::Migration[7.1]
  def change
    create_table :paypals do |t|
      t.string :paypal_email

      t.timestamps
    end
  end
end
