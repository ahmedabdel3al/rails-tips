class Post < ApplicationRecord

  belongs_to :user
  #BAD WAY
  scope :with_regular_user_correct_way , -> () {joins(:user).merge(User.regular)}
  #Correct way
  scope :with_regular_user_bad_way , -> () {joins(:user).where("users.user_type = 'regular'")}
end
