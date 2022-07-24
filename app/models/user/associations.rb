module User::Associations
  extend ActiveSupport::Concern

  included do
      has_many :posts
      has_one :last_post , ->{ joins('INNER JOIN ( SELECT MAX(id) AS id  FROM posts GROUP BY posts.user_id) AS latest_posts ON latest_posts.id = posts.id') } , class_name: Post.to_s
      has_many :user_logins
      has_one :last_login , -> () { joins('INNER JOIN ( SELECT MAX(id) AS id  FROM user_logins GROUP BY user_logins.user_id) AS latest_login ON latest_login.id = user_logins.id') }, class_name: UserLogin.to_s

  end
end
