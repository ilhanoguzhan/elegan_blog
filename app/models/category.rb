class Category < ActiveRecord::Base
  has_many :posts
  has_one :picture, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :picture, :reject_if => :all_blank, :allow_destroy => true, :update_only => true

  validates_associated :picture, presence: true
end
