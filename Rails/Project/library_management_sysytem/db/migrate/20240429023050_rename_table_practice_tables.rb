class RenameTablePracticeTables < ActiveRecord::Migration[7.1]
  def change
    rename_table :memebers, :members
  end
end
