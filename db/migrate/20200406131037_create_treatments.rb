class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.references :category, foreign_key: true
      t.boolean :special_offer
      t.integer :time
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
