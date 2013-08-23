class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :comments, as: :commentable

  default_scope order('updated_at desc')
end
