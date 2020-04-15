require "open-uri"
Category.destroy_all

puts "deleting seeds"
#tanning
file = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276135/waterlily/tanning.jpg')
tanning = Category.create(
  name: "Tanning",
  description: "Single sessions range from 2-14 minutes. To build a gradual base tan we recommend 2-3 sessions per week over a 4-6 week period, to enable your skin to develop a natural tan without over-exposure. We pride ourselves on our professional advice and guidance when using tanning equipment."
)

tanning.photo.attach(io:file, filename:'tanning.jpg', content_type: 'image/jpg')

#massage
file1 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586180075/waterlily/massage.jpg')
massage = Category.create(
  name: "Massage",
  description: "Indulge your senses with a relaxing massage. The effective and enjoyable way to improve skin health, texture and circulation whilst relieving stress and tension."
)

massage.photo.attach(io:file1, filename:'massage.jpg', content_type: 'image/jpg')

#hands, feet, nails

file2 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276329/waterlily/nails.jpg')
handsfeetnails = Category.create(
  name: "Hands, Feet & Nails",
  description: "Show off your nails and be kind to your feet. We specialize in Shellac overlays and have a wide range of colours and effects to choose from."
)

handsfeetnails.photo.attach(io:file2, filename:'nails.jpg', content_type: 'image/jpg')

#waxing

file3 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276140/waterlily/waxing.jpg')
waxing = Category.create(
  name: "Waxing",
  description: "Feel more confident with smooth, hair-free skin."
)

waxing.photo.attach(io:file3, filename:'waxing.jpg', content_type: 'image/jpg')

#facials

file4 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276319/waterlily/facial.jpg')
facials = Category.create(
  name: "Facials",
  description: "Rejuvenate your skin with a relaxing facial."
)

facials.photo.attach(io:file4, filename:'facials.jpg', content_type: 'image/jpg')

#tinting and perming

file6 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586339320/waterlily/eyebrow.jpg')
tintingperming = Category.create(
  name: "Tinting & Perming",
  description: "Make your eyes stand out with our range of tinting and perming for eyelashes and eyebrows."
)

tintingperming.photo.attach(io:file6, filename:'tintingperming.jpg', content_type: 'image/jpg')

#Body Contour

file5 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586276315/waterlily/contour.jpg')
bodycontour = Category.create(
  name: "Body Contour",
  description: "We offer services to help tone the body and reduce cellulite."
)

bodycontour.photo.attach(io:file5, filename:'bodycontour.jpg', content_type: 'image/jpg')


#nationalcosmeticclinic

file7 = URI.open('https://res.cloudinary.com/dqlvehu5z/image/upload/v1586340050/waterlily/botox.jpg')
cosmeticcenters = Category.create(
  name: "Cosmetic Treatments",
  description: "We offer a wide range of non-surgical cosmetic treatments, aimed to help you feel more confident. Please contact us for a consultation."
)

cosmeticcenters.photo.attach(io:file7, filename:'cosmetic.jpg', content_type: 'image/jpg')
puts "completed categories"

#Subcategories
Subcategory.destroy_all
#thaimassage
thaimassage = Subcategory.create(
  name: "Thai Massage",
  description: "Thai Massage with Onsri",
  category_id: Category.find_by_name("Massage").id
)

thai30min = Treatment.create(
  title: "30 Minute Thai Massage",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Thai Massage").id,
  standard_price_cents: 3000
)

#swedish massage
swedish = Subcategory.create(
  name: "Swedish",
  description: "Deep Tissue Massage",
  category_id: Category.find_by_name("Massage").id
)

#aromatherapy massage
aromatherapy = Subcategory.create(
  name: "Aromatherapy",
  description: "Relaxation Massage",
  category_id: Category.find_by_name("Massage").id
)

#hotstone massage
hotstone = Subcategory.create(
  name: "Hot Stone",
  description: "Soothing massage using hot volcanic stones",
  category_id: Category.find_by_name("Massage").id
)

#packages
packages = Subcategory.create(
  name: "Packages",
  description: "Value Packages",
  category_id: Category.find_by_name("Massage").id
)

#tanning
verticaltanning = Subcategory.create(
  name: "Vertical Tanning",
  description: "We pride ourselves on our professional advice and guidance when using tanning equipment. To maintain a healthy tan, usually 1-2 sessions are suffice.",
  category_id: Category.find_by_name("Tanning").id
)

#manicures
manicures = Subcategory.create(
  name: "Manicures",
  description: "Look after your hands",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

#shellac
shellac = Subcategory.create(
  name: "Shellac Overlays",
  description: "On like a polish, wears like a gel",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

#shellac
gellux = Subcategory.create(
  name: "Gellux",
  description: "On like a polish, wears like a gel",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

#pedicures
pedicures = Subcategory.create(
  name: "Pedicures",
  description: "Give your feet the care they deserve",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

#packages
packages2 = Subcategory.create(
  name: "Packages",
  description: "Value Packages",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

#facials
packages2 = Subcategory.create(
  name: "Facials",
  description: "Leave your skin feeling smooth and fresh",
  category_id: Category.find_by_name("Facials").id
)

#facewaxing
face = Subcategory.create(
  name: "Face Waxing",
  description: "Using a gentle creme for sensitive skin",
  category_id: Category.find_by_name("Waxing").id
)

#bodywaxing
body = Subcategory.create(
  name: "Body Waxing",
  description: "Using a gentle creme for sensitive skin",
  category_id: Category.find_by_name("Waxing").id
)

#arasys
arasys = Subcategory.create(
  name: "Arasys",
  description: "Each 17 minute session is equivalent to 250 sit-ups or 300 buttock raises. Widely known as the best faradic system",
  category_id: Category.find_by_name("Body Contour").id
)

#hartour
hartour = Subcategory.create(
  name: "Hartour Ultrasound",
  description: "The effective sollution to cellulite. Breaks down the hardened deposits and deep lymphatic massage flushes toxins from the body",
  category_id: Category.find_by_name("Body Contour").id
)

#xfit
xfit = Subcategory.create(
  name: "X-Fit Vibration Plate",
  description: "10 minute session burns fat, helps you lose weight, reduces cellulite, increases circulation and builds muscle tone.",
  category_id: Category.find_by_name("Body Contour").id
)

#tintingperming
tintingperming = Subcategory.create(
  name: "Tinting & Perming",
  description: "Please note that a patch test is required at least 24 hours prior to tinting and perming",
  category_id: Category.find_by_name("Tinting & Perming").id
)

#cosmetic
cosmetic = Subcategory.create(
  name: "Cosmetic Treatments",
  description: "Please contact us for a consulation",
  category_id: Category.find_by_name("Cosmetic Treatments").id
)



puts "Completed subcategory"
