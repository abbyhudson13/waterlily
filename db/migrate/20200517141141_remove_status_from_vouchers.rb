class RemoveStatusFromVouchers < ActiveRecord::Migration[5.2]
  def change
    remove_column :vouchers, :status
  end
end
