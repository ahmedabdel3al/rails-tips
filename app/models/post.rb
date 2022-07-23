class Post < ApplicationRecord
  # belongs_to :user
  validates :title ,strong_title: true
end
