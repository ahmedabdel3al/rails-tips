module User::Scopes
  extend ActiveSupport::Concern

  included do
    scope :regular , ->(){ where(user_type: :regular)}
  end
end

