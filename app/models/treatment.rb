class Treatment < ApplicationRecord
  belongs_to :subcategory
  monetize :standard_price_cents, as: "standard_price"
  monetize :offer_price_cents, as: "offer_price"
  has_many :vouchers
  validates :title, presence: true
  validates :time, presence: true
  validates :standard_price, presence: true

  scope :active, -> { where(deactivated_at: nil) }

  def deactivate!
    self.deactivated_at = Time.zone.now
    save
  end

  def to_label
    if self.special_offer == true
      "#{self.title} - £#{self.offer_price} (was £#{self.standard_price}) "
    else
    "#{self.title} - £#{self.standard_price}"
    end
  end

end
