module User::Associations
  extend ActiveSupport::Concern

  included do
      has_many :user_logins
      has_one :last_login , -> () { joins('INNER JOIN ( SELECT MAX(id) AS id  FROM user_logins GROUP BY user_logins.user_id) AS latest_login ON latest_login.id = user_logins.id') }, class_name: UserLogin.to_s

  end
end
