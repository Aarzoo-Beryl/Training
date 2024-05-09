class CreateJoinTableProductOrder < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :orders
  end
end
