  module User::Validations
    extend ActiveSupport::Concern

    included do
      validates :full_name, presence: true
      validates :email, presence: true , uniqueness: true

    end
  end
