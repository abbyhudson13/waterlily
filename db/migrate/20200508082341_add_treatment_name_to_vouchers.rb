class AddTreatmentNameToVouchers < ActiveRecord::Migration[5.2]
  def change
    rename_column(:vouchers, :treatment, :treatment_name)
  end
end
