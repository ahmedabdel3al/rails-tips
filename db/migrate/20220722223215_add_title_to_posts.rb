class AddTitleToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string
    add_reference :posts ,:user , index: true
  end
end
