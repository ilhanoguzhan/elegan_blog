class Category < ActiveRecord::Base
  has_many :posts
  has_one :pictures, :as => :imageable
end
