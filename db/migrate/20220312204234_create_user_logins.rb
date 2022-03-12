class CreateUserLogins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_logins do |t|
      t.references :user, index: true , null: false
      t.timestamp :login_at , null:false
      t.string :ip_address , null:false
    end
  end
end
