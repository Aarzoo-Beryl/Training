class CreateIndexMemeberColumn < ActiveRecord::Migration[7.1]
  def change
    add_index :memebers, :email, unique: true, name: 'unique_emails'
  end
end
