class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :age
      t.string :type , :null => true , :limit =>32

      t.timestamps
    end
  end
end
