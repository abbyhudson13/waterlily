class Category < ApplicationRecord
  has_many :treatments
  has_many :subcategories
end
