class ChangeColumnMembers < ActiveRecord::Migration[7.1]
  def change
    change_column :memebers, :phone_number, :string, null: false
    change_column :memebers, :email, :string, null: false
  end
end
