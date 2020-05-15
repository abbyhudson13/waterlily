class AddExpiryDateToVouchers < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :expiry_date, :date
  end
end
