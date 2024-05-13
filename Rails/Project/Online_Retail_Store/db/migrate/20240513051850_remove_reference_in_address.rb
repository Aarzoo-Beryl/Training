class RemoveReferenceInAddress < ActiveRecord::Migration[7.1]
  def change
    remove_reference :addresses, :customers, foriegn_key: true
  end
end
