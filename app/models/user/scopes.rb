class User
  module Scopes
    User.class_eval do
      scope :admin , ->(){  where({email: 'admin@gmail.com'}) }
    end
  end
end
