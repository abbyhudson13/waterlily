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
    if special_offer == true
      "#{title} - £#{offer_price} (was £#{standard_price}) "
    else
      "#{title} - £#{standard_price}"
    end
  end
end
