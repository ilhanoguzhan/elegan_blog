class Category < ActiveRecord::Base
  has_many :posts
  has_one :picture, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :picture, :reject_if => :all_blank, :allow_destroy => true, :update_only => true

  validates_associated :picture

  validates_presence_of :name, :order
  validates_numericality_of :order
end
