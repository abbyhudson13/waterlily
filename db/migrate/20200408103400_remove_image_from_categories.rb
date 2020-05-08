class RemoveImageFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :image
  end
end
