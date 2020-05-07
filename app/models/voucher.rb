class Voucher < ApplicationRecord
  belongs_to :treatment
  monetize :amount_cents
end
