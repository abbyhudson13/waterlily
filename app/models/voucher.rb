class Voucher < ApplicationRecord
  belongs_to :treatment
  monetize :amount_cents
  belongs_to :user
end
