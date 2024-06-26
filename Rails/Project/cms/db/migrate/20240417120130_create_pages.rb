class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages do |t|
      t.belongs_to :subject
      t.string :name
      t.integer :position
      t.boolean :visible
      t.string :permalink
      t.text :content

      t.timestamps
    end
  end
end
