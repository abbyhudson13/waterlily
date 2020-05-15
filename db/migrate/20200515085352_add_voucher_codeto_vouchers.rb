class AddVoucherCodetoVouchers < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :voucher_code, :string
  end
end
