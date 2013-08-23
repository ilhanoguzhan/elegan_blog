class Post < ActiveRecord::Base

  has_and_belongs_to_many :tags
  belongs_to :category
  has_many :comments, as: :commentable
  has_many :pictures, :as => :imageable
  accepts_nested_attributes_for :pictures

  default_scope order('updated_at desc')
end
