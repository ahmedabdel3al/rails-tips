module User::Scopes
  extend ActiveSupport::Concern

  included do
    scope :admin , ->(){  where({email: 'admin@gmail.com'}) }
  end
end

