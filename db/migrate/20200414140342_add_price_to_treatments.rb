class AddPriceToTreatments < ActiveRecord::Migration[5.2]
  def change
    add_monetize :treatments, :standard_price, currency: {present: false}
    add_monetize :treatments, :offer_price, currency: {present: false}
  end
end
