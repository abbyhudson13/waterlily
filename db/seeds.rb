require "open-uri"
Category.destroy_all

puts "deleting seeds"
#tanning
file = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276135/waterlily/sean-o-KMn4VEeEPR8-unsplash_ivqzdw.jpg')
tanning = Category.create(
  name: "Tanning",
  description: "Single sessions range from 2-14 minutes. To build a gradual base tan we recommend 2-3 sessions per week over a 4-6 week period, to enable your skin to develop a natural tan without over-exposure. We pride ourselves on our professional advice and guidance when using tanning equipment."
)

tanning.photo.attach(io:file, filename:'tanning.jpg', content_type: 'image/jpg')

#massage
file1 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586180075/waterlily/massage_ew389w.jpg')
massage = Category.create(
  name: "Massage",
  description: "Indulge your senses with a relaxing massage. From Thai Massages to Hot Stone, we offer a variety of massages to help ease tension and make you feel rejuvenated."
)

massage.photo.attach(io:file1, filename:'massage.jpg', content_type: 'image/jpg')

#hands, feet, nails

file2 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276329/waterlily/jakob-owens-lwTzL-QwhQA-unsplash_vobsak.jpg')
handsfeetnails = Category.create(
  name: "Hands, Feet & Nails",
  description: "Show off your nails and be kind to your feet. We specialize in Shellac overlays and have a wide range of colours and effects to choose from."
)

handsfeetnails.photo.attach(io:file2, filename:'nails.jpg', content_type: 'image/jpg')

#waxing

file3 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276140/waterlily/channey-DOe0Iw6nyaw-unsplash_c7ymis.jpg')
waxing = Category.create(
  name: "Waxing",
  description: "Feel more confident with smooth, hair-free skin."
)

waxing.photo.attach(io:file3, filename:'waxing.jpg', content_type: 'image/jpg')

#facials

file4 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276319/waterlily/adetayo-adefala-1K2iQQM31D0-unsplash_somgkw.jpg')
facials = Category.create(
  name: "Facials",
  description: "Rejuvenate your skin with a relaxing facial."
)

waxing.photo.attach(io:file4, filename:'facials.jpg', content_type: 'image/jpg')

#tinting and perming

file6 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586339320/waterlily/elza-shimpf-rHoMajizsr4-unsplash_eworeh.jpg')
tintingperming = Category.create(
  name: "Tinting & Perming",
  description: "Make your eyes stand out with our range of tinting and perming for eyelashes and eyebrows."
)

tintingperming.photo.attach(io:file6, filename:'tintingperming.jpg', content_type: 'image/jpg')

#Body Contour

file5 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276315/waterlily/yoann-boyer-NIWyNDzAmhw-unsplash_seq4iq.jpg')
bodycontour = Category.create(
  name: "Body Contour",
  description: "We offer services to help tone the body and reduce cellulite."
)

bodycontour.photo.attach(io:file5, filename:'bodycontour.jpg', content_type: 'image/jpg')


#nationalcosmeticclinic

file7 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586340050/waterlily/candice-picard-i8ADlZB2Ijo-unsplash_zoklqc.jpg')
cosmeticcenters = Category.create(
  name: "National Cosmetic Clinic",
  description: "At National Cosmetic Clinics we understand the importance of looking good and feeling confident and for over 25 years we have provided thousands of men and women with an alternative to surgery, earning a strong reputation within the cosmetic industry. Please contact us for a consultation."
)

cosmeticcenters.photo.attach(io:file7, filename:'cosmetic.jpg', content_type: 'image/jpg')
puts "completed categories"
