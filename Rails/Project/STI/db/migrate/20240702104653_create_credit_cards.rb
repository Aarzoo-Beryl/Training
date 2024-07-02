class CreateCreditCards < ActiveRecord::Migration[7.1]
  def change
    create_table :credit_cards do |t|
      t.string :card_number
      t.string :cardholder_name
      t.timestamps
    end
  end
end
