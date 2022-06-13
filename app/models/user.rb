class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  attr_accessor :ip



  include User::Associations
  include User::Scopes
  include User::Validations
  include User::Observer




  def after_database_authentication
    self.user_logins.create(ip_address: Current.ip_address ,login_at: Time.now)
  end

  def email_required?
    false
  end



end
