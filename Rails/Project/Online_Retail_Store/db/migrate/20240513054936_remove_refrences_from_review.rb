class RemoveRefrencesFromReview < ActiveRecord::Migration[7.1]
  def change
    remove_reference :reviews, :customers, foriegn_key: true
    remove_reference :reviews, :products, foriegn_key: true
  end
end
