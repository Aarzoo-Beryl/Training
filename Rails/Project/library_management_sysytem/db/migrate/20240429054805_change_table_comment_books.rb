class ChangeTableCommentBooks < ActiveRecord::Migration[7.1]
  def change
    change_table_comment :books, from: nil, to: "contains list of all the books present in library"
  end
end
