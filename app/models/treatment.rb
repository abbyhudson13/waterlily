class Treatment < ApplicationRecord
  belongs_to :subcategory
  monetize :price_cents
end
