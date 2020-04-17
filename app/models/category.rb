class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy
  has_many :treatments, through: :subcategories
  has_one_attached :photo
end
