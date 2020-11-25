
desc "2020-11-25: Add all special offers for black friday"
task black_friday_deals: :environment do
  treatments = Treatment.all

  treatments.find_each do |treatment|
    treatment.special_offer = true
    treatment.offer_price = treatment.standard_price * 0.85
    treatment.save!
  end
  puts "Done! 🏁 🏁 🏁"
end
