class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.string :type
      t.text :content
      t.references :notifiable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
