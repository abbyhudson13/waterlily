class AddDeactivatedAtToSubcategories < ActiveRecord::Migration[5.2]
  def change
    add_column :subcategories, :deactivated_at, :date
  end
end
