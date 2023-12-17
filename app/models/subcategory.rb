class Subcategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :treatments

  scope :active, -> { where(deactivated_at: nil) }

  def deactivate!
    self.deactivated_at = Time.zone.now
    save
  end

  def activate!
    self.deactivated_at = nil
    save
  end
end
