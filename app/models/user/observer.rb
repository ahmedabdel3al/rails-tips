class User
  module Observer
    User.class_eval do
      before_save :validate_email


      def validate_email
        puts "validate email"
      end


    end
  end
end
