class User
  module Validations
    User.class_eval do
      validates :full_name, presence: true
      validates :email, presence: true , uniqueness: true


    end
  end
end
