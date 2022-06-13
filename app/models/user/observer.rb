module User::Observer
  extend ActiveSupport::Concern

  included do
    before_save :validate_email


    def validate_email
      puts "validate email"
    end


  end
end
