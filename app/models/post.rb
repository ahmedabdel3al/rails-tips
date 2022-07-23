class Post < ApplicationRecord

  default_scope { visible }
  scope :visible , ->{ where(delete_at:  nil ) }
  scope :with_deleted , ->{ unscope(where: :delete_at) }
  scope :deleted , ->{ with_deleted.where.not(delete_at:  nil ) }
end
