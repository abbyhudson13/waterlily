class Treatment < ApplicationRecord
  belongs_to :subcategory
  monetize :standard_price_cents, as: "standard_price"
  monetize :offer_price_cents, as: "offer_price"
  has_many :vouchers
  validates :title, presence: true
  validates :time, presence: true
  validates :standard_price, presence: true
  def to_label
    "#{self.title} - £#{self.special_offer? ? self.offer_price : self.standard_price}"
  end
end
