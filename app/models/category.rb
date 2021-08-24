class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy
  has_many :treatments, through: :subcategories
  has_one_attached :photo

  def to_param
    name
  end

  def public_name
    name.split("_").map(&:capitalize).join(' ')
  end
end
