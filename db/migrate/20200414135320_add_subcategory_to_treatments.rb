class AddSubcategoryToTreatments < ActiveRecord::Migration[5.2]
  def change
    remove_column :treatments, :subcategory_id
    add_column :treatments, :subcategory_id, :integer, references: :subcategory, foreign_key: true
  end
end
