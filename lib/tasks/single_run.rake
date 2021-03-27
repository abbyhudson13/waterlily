
desc "2021-03-25: Add vouchers for single amounts"
task add_vouchers: :environment do
  file = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276135/waterlily/tanning.jpg')
  voucher_category = Category.create(name: "Vouchers")
  voucher_category.photo.attach(io:file, filename:'tanning.jpg', content_type: 'image/jpg')
  voucher_subcat = Subcategory.create(name: "Vouchers", category: voucher_category)
  (5..50).step(5) do |amount|
    voucher = Treatment.create(
        title: "£#{amount} Voucher",
        standard_price_cents: (amount.to_i * 100),
        special_offer: false
      )
  end
  puts "Done! 🏁 🏁 🏁"
end

desc "2020-11-25: Add all special offers for black friday"
task black_friday_deals: :environment do
  treatments = Treatment.all

  treatments.find_each do |treatment|
    treatment.special_offer = true
    treatment.offer_price = treatment.standard_price * 0.8
    treatment.save!
  end
  puts "Done! 🏁 🏁 🏁"
end
