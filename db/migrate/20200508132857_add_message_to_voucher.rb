class AddMessageToVoucher < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :message, :text
  end
end
