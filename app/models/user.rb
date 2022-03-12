class User < ApplicationRecord
  include Associations
  include Scopes
  include Validations
  include Observer

  has_secure_password
end
