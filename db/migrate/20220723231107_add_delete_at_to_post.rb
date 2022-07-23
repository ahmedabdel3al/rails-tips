class AddDeleteAtToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :delete_at, :timestamp , default: nil
  end
end
