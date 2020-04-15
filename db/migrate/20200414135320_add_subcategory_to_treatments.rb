class AddSubcategoryToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :subcategory_id, :integer, references: :subcategory, foreign_key: true
  end
end
