class Subcategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :treatments

  scope :active, -> { deactivated_at: nil) }
end
