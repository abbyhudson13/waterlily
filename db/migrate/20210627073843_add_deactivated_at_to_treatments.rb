class AddDeactivatedAtToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :deactivated_at, :date
  end
end
