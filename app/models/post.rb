class Post < ActiveRecord::Base
  has_many :comments, as: :commentable

  default_scope order('updated_at desc')
end
