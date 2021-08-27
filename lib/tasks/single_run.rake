desc "2021-08-24: Use standard category names"
task standardize_category_names: :environment do
  puts "renaming categories..."
  categories = Category.all
  categories.each do |category|
    category_name = category.name
    category.name = category_name.downcase.split.join("_")
    category.save!
    puts "."
  end

  puts "Done! 🏁 🏁 🏁"
end

desc "2021-06-27: Edit description for cosmetics"
task change_cosmetics_description: :environment do
  puts "changing description..."
  cosmetics = Category.where(name: "Cosmetic Treatments").last
  description = "<p><u><strong>Cosmetic Treatments:</strong></u></p>
<p>We offer a full range of cosmetic treatments, all by our fully qualified, GMC-registered Doctor, Dr Indira Ekanayake, MBBS, DA.</p>
<p>We offer a free consultation. Products include:</p>
<ul>
    <li>Dermal Fillers</li>
    <li>Juvederm Vycross range</li>
    <li>Botox<span>&trade;</span></li>
    <li>Frown Lines</li>
    <li>Smile Lines</li>
    <li>Cheek Volume</li>
    <li>Lip Enhancements</li>
</ul>
<p>Call <a href='tel:01603 613506'>01603 613506</a> for more details or to book a consultation.</p>
<p><br></p>
<p><u><strong>Permanent Make-up:</strong></u></p>
<p><span>Carolyn, a fully qualified Micro-pigmentation artist using BIOTEK products, offers Eyebrow, Lip and Eye Enhancements. Please contact her directly on <a href='tel:07887560732'>07887560732</a> or email <a href='mailto:carolynjaypmu@gmail.com'>carolynjaypmu@gmail.com</a> for more details.</span></p>"

  cosmetics.description = description
  cosmetics.save!

  puts "Done! 🏁 🏁 🏁"
end

desc "2021-06-22: Deactivate arasys"
task deactivate_arasys: :environment do
  puts "deactivating Arasys subcategory..."
  arasys = Subcategory.where(name: "Arasys").last
  arasys.deactivate!

  puts "deactivating associated treatments..."

  arasys.treatments.each do |treatment|
    treatment.deactivate!
  end

  puts "Done! 🏁 🏁 🏁"
end

desc "2021-03-27: Add vouchers for single amounts"
require "open-uri"
task add_vouchers: :environment do
  file = URI.open("https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276135/waterlily/tanning.jpg")
  voucher_category = Category.create!(name: "Vouchers")
  voucher_category.photo.attach(io: file, filename: "tanning.jpg", content_type: "image/jpg")
  voucher_subcat = Subcategory.create!(name: "Vouchers", category_id: voucher_category.id)
  (5..50).step(5) do |amount|
    Treatment.create!(
      title: "£#{amount} Voucher",
      standard_price_cents: (amount.to_i * 100),
      special_offer: false,
      subcategory_id: voucher_subcat.id,
      time: 0
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
