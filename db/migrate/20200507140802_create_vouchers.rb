class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.string :state
      t.string :treatment
      t.monetize :amount, currency: {present: false}
      t.string :checkout_session_id
      t.references :treatment, foreign_key: true
      t.timestamps
    end
  end
end
