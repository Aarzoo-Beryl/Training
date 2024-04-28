class ChangeTableBooks < ActiveRecord::Migration[7.1]
  def change
    change_table :books do |t|
      t.index :title
    end
  end
end
