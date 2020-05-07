class Treatment < ApplicationRecord
  belongs_to :subcategory
  monetize :standard_price_cents, as: "standard_price"
  monetize :offer_price_cents, as: "offer_price"
  has_many :vouchers
end
