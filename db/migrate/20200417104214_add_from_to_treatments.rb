class AddFromToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :variable_price, :boolean
  end
end
