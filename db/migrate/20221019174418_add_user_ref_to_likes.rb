class AddUserRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :author, foreign_key: { to_table: :users }
    add_reference :likes, :post, foreign_key: {to_table: :posts}
    add_reference :comments, :author, foreign_key: { to_table: :users }
    add_reference :comments, :post, foreign_key: {to_table: :posts}
  end
end