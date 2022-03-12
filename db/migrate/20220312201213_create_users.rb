class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name,         null: false
      t.string :email, index: { unique: true, name: 'unique_emails' } , null: false
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
