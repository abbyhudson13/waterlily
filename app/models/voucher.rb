class Voucher < ApplicationRecord
  belongs_to :treatment
  monetize :amount_cents
  belongs_to :user
  validates :treatment_id, presence: true

  def created_at_formatted
    created_at.strftime('%d %b %Y')
  end

  def expiry_date_formatted
    expiry_date.strftime('%d %b %Y')
  end
end
