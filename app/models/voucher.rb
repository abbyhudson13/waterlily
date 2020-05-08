class Voucher < ApplicationRecord
  belongs_to :treatment
  monetize :amount_cents
  belongs_to :user
  validates :treatment_id, presence: true
end
