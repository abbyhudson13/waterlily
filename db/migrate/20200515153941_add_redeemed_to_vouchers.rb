class AddRedeemedToVouchers < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :redeemed, :boolean
  end
end
