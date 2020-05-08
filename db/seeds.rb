require "open-uri"
Category.destroy_all
Subcategory.destroy_all
Treatment.destroy_all

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
  description: "Make your eyes stand out with our range of tinting and perming for eyelashes and eyebrows. Please note that a patch test is required at least 24 hours prior to tinting and perming"
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

thai60min = Treatment.create(
  title: "60 Minute Thai Massage",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Thai Massage").id,
  standard_price_cents: 4500
)

thai90min = Treatment.create(
  title: "90 Minute Thai Massage",
  time: 90,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Thai Massage").id,
  standard_price_cents: 6500
)

thaihead = Treatment.create(
  title: "Thai Head Massage",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Thai Massage").id,
  standard_price_cents: 2500
)

thaifoot = Treatment.create(
  title: "Thai Foot Massage",
  time: 30,
  special_offer: true,
  subcategory_id: Subcategory.find_by_name("Thai Massage").id,
  offer_price_cents: 2000,
  standard_price_cents: 2500
)

#deeptissuemassage
deeptissuemassage = Subcategory.create(
  name: "Deep Tissue Massage",
  description: "Deep Tissue Massage with Onsri",
  category_id: Category.find_by_name("Massage").id
)

deeptissuethirty = Treatment.create(
  title: "30 Minute Deep Tissue Massage",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Deep Tissue Massage").id,
  standard_price_cents: 3000
)

deeptissuesixty = Treatment.create(
  title: "60 Minute Deep Tissue Massage",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Deep Tissue Massage").id,
  standard_price_cents: 4000
)

deeptissueninety = Treatment.create(
  title: "90 Minute Deep Tissue Massage",
  time: 90,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Deep Tissue Massage").id,
  standard_price_cents: 5500
)

#swedish massage
swedish = Subcategory.create(
  name: "Swedish",
  description: "Deep Tissue Massage",
  category_id: Category.find_by_name("Massage").id
)
swedishback = Treatment.create(
  title: "Swedish Back Massage",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Swedish").id,
  standard_price_cents: 3000
)

swedishbackneckshoulder = Treatment.create(
  title: "Swedish Back, Neck & Shoulder Massage",
  time: 45,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Swedish").id,
  standard_price_cents: 3500
)

swedishfullbody = Treatment.create(
  title: "Swedish Full Body Massage",
  time:60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Swedish").id,
  standard_price_cents: 4000
)


#aromatherapy massage
aromatherapy = Subcategory.create(
  name: "Aromatherapy",
  description: "Relaxation Massage using essential oils",
  category_id: Category.find_by_name("Massage").id
)

aromatherapybackneckshoulder = Treatment.create(
  title: "Aromatherapy Back, Neck and Shoulder Massage",
  time: 45,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Aromatherapy").id,
  standard_price_cents: 3700
)

aromatherapyfullbody = Treatment.create(
  title: "Aromatherapy Full Body Massage",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Aromatherapy").id,
  standard_price_cents: 4200
)

#hotstone massage
hotstone = Subcategory.create(
  name: "Hot Stone",
  description: "Soothing massage using hot volcanic stones",
  category_id: Category.find_by_name("Massage").id
)

hotstonebackneck = Treatment.create(
  title: "Hot Stone Back, Neck and Shoulder",
  time: 45,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Hot Stone").id,
  standard_price_cents: 4000
)

hotstonefullbody = Treatment.create(
  title: "Hot Stone Full Body Massage",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Hot Stone").id,
  standard_price_cents: 4500
)

#bodyscrub
bodyscrub = Subcategory.create(
  name: "Body Exfoliation",
  description: "Full body exfoliation using a scrub to leave your skin feeling soft",
  category_id: Category.find_by_name("Massage").id
)



fullbodyscrub = Treatment.create(
  title: "Full Body Scrub",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Exfoliation").id,
  standard_price_cents: 3000
)

#prenatal massage
prenatal = Subcategory.create(
  name: "Prenatal Massage",
  description: "A massage designed especially for pregnancy",
  category_id: Category.find_by_name("Massage").id
)

prenatalthirty = Treatment.create(
  title: "30 minute Prenatal Massage",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Prenatal Massage").id,
  standard_price_cents: 2800
)

prenatalsixty = Treatment.create(
  title: "60 minute Prenatal Massage",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Prenatal Massage").id,
  standard_price_cents: 4000
)

#packages
packages1 = Subcategory.create(
  name: "Massage Packages",
  description: "Value Packages",
  category_id: Category.find_by_name("Massage").id
)

relaxationpackage = Treatment.create(
  title: "Relaxation Package",
  description: "Classic Facial and Aromatherapy Full Body Massage",
  time: 120,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Massage Packages").id,
  standard_price_cents: 6000
)

deepbodytreatment = Treatment.create(
  title: "Deep Body Treatment Package",
  description: "Full Body Scrub & Full Body Aromatherapy Massage",
  time: 120,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Massage Packages").id,
  standard_price_cents: 6500
)
mensonly = Treatment.create(
  title: "MOT- Male Only Treatment",
  description: "An intensive treatment for men using specialized products, incorporates a mini facial, hand and nail treatment and back/shoulder massage.",
  time: 75,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Massage Packages").id,
  standard_price_cents: 5000
)


#tanning
verticaltanning = Subcategory.create(
  name: "Vertical Tanning",
  description: "We pride ourselves on our professional advice and guidance when using the tanning sunbeds. To maintain a healthy tan using a sunbed, usually 1-2 sessions are suffice.",
  category_id: Category.find_by_name("Tanning").id
)
singlesessiontanning= Treatment.create(
  title: "Tanning- Single Session per minute",
  time: 1,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Vertical Tanning").id,
  standard_price_cents: 90
)

thirtytanning= Treatment.create(
  title: "Tanning- 30 minute course",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Vertical Tanning").id,
  standard_price_cents: 2300
)

sixtytanning= Treatment.create(
  title: "Tanning- 60 minute course",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Vertical Tanning").id,
  standard_price_cents: 3500
)

ninetytanning= Treatment.create(
  title: "Tanning- 90 minute course",
  time: 90,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Vertical Tanning").id,
  standard_price_cents: 4500
)

onetwentytanning= Treatment.create(
  title: "Tanning- 120 minute course",
  time: 120,
  special_offer: true,
  offer_price_cents: 4500,
  subcategory_id: Subcategory.find_by_name("Vertical Tanning").id,
  standard_price_cents: 5500
)

#manicures
manicures = Subcategory.create(
  name: "Manicures",
  description: "Look after your hands and nails",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

quickfix = Treatment.create(
  title: "Quick Fix- File & Polish - Fingers",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicures").id,
  standard_price_cents: 2000
)

minimanicure = Treatment.create(
  title: "Mini Manicure",
  description: "File, cuticle tidy & polish",
  time: 45,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicures").id,
  standard_price_cents: 2500
)

standardmanicure = Treatment.create(
  title: "Standard Manicure",
  description: "Soak, file, cuticle tidy, hand & arm massage and polish",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicures").id,
  standard_price_cents: 3000
)


luxurymanicure = Treatment.create(
  title: "Luxury Manicure",
  description: "A special occassion treatment. Includes Paraffin wax treatment for dry skin, soak, file, cuticle tidy, hand & arm massage and nail polish",
  time: 75,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicures").id,
  standard_price_cents: 3500
)

menshandgroom = Treatment.create(
  title: "Mens Hand Groom",
  description: "We will cut and tidy cuticles, massage the hands and buff nails for a healthy glow.",
  time: 45,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicures").id,
  standard_price_cents: 2500
)

#shellac
shellac = Subcategory.create(
  name: "Shellac/ Gellux Overlays",
  description: "On like a polish, wears like a gel. For your finger or toe nails",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

shellaccolour = Treatment.create(
  title: "Shellac/ Gellux Colour",
  description: "Fingers or toes.",
  time: 60,
  special_offer: true,
  subcategory_id: Subcategory.find_by_name("Shellac/ Gellux Overlays").id,
  offer_price_cents: 2240,
  standard_price_cents: 2800
)

shellacfrench = Treatment.create(
  title: "Shellac/ Gellux _ French Manicure ",
  description: "Fingers or toes.",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Shellac/ Gellux Overlays").id,
  standard_price_cents: 3000
)

shellacsoakoff = Treatment.create(
  title: "Gel Soak off and Mini Manicure/ Pedicure ",
  description: "No polish.",
  time: 90,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Shellac/ Gellux Overlays").id,
  standard_price_cents: 2000
)


#pedicures
pedicures = Subcategory.create(
  name: "Pedicures",
  description: "Give your feet and toe nails the care they deserve",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)
filepolish = Treatment.create(
  title: "Quick Fix File & Polish- Toes",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Pedicures").id,
  standard_price_cents: 2000
)

minipedicure = Treatment.create(
  title: "Mini Pedicure",
  description: "File, cuticle tidy and polish.",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Pedicures").id,
  standard_price_cents: 2500
)

standardpedicure = Treatment.create(
  title: "Standard Pedicure",
  description: "Soak, file, cuticle tidy, foot massage and polish.",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Pedicures").id,
  standard_price_cents: 3000
)

luxurypedicure = Treatment.create(
  title: "Luxury Pedicure",
  description: "As standard, with added paraffin wax treatment for dry skin.",
  time: 90,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Pedicures").id,
  standard_price_cents: 4000
)

mensfootgroom = Treatment.create(
  title: "Mens Foot Groom",
  description: "Nails are cut, cuticles tidied. This treatment includes foot spa, removal of dry skin and a relaxing foot massage.",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Pedicures").id,
  standard_price_cents: 3000
)

#packages
packages2 = Subcategory.create(
  name: "Manicure & Pedicure Packages",
  description: "Value Packages",
  category_id: Category.find_by_name("Hands, Feet & Nails").id
)

standardpamperpackage = Treatment.create(
  title: "Standard Pamper Package",
  description: "Classic Facial, Standard Manicure & Standard Pedicure",
  time: 180,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicure & Pedicure Packages").id,
  standard_price_cents: 8000,
)

luxurypamperpackage = Treatment.create(
  title: "Luxury Pamper Package",
  description: "Classic Facial, Standard Manicure & Standard Pedicure",
  time: 240,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicure & Pedicure Packages").id,
  standard_price_cents: 9500
)
mensonly2 = Treatment.create(
  title: "MOT- Male only Treatment",
  description: "An intensive treatment for men using specialized products, incorporates a mini facial, hand and nail treatment and back/shouler massage.",
  time: 75,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Manicure & Pedicure Packages").id,
  standard_price_cents: 5000
)

#facials
facials2 = Subcategory.create(
  name: "Facials",
  description: "Leave your skin feeling smooth and fresh",
  category_id: Category.find_by_name("Facials").id
)
minifacial = Treatment.create(
  title: "Mini Facial",
  description: "Cleanse, tone, mini face massage and moisturize",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Facials").id,
  standard_price_cents: 2700,
)
classicfacial = Treatment.create(
  title: "Classic Facial",
  description: "Cleanse, tone, exfoliation, mini face massage, mask and moisturize",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Facials").id,
  standard_price_cents: 3500,
)

luxuryfacial = Treatment.create(
  title: "Luxury Facial",
  description: "Cleanse, tone, exfoliation, full face and neck massage, mask and moisturize",
  time: 75,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Facials").id,
  standard_price_cents: 4000,
)
mensfacial = Treatment.create(
  title: "Mens Facial",
  description: "A speedy but effective facial to meet the needs of today's busy man",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Facials").id,
  standard_price_cents: 2000,
)


packages3 = Subcategory.create(
  name: "Packages with Facials",
  description: "Value Packages",
  category_id: Category.find_by_name("Facials").id
)

standardpamperpackage2 = Treatment.create(
  title: "Standard Pamper Package",
  description: "Classic Facial, Standard Manicure & Standard Pedicure",
  time: 120,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Packages with Facials").id,
  standard_price_cents: 8000,
)

luxurypamperpackage2 = Treatment.create(
  title: "Luxury Pamper Package",
  description: "Classic Facial, Standard Manicure & Standard Pedicure",
  time: 120,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Packages with Facials").id,
  standard_price_cents: 9500
)

relaxationpackage2 = Treatment.create(
  title: "Relaxation Package",
  description: "Classic Facial and Aromatherapy Full Body Massage",
  time: 120,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Packages with Facials").id,
  standard_price_cents: 6000
)

mensonly3 = Treatment.create(
  title: "MOT- Male only Treatment",
  description: "An intensive treatment for men using specialized products, incorporates a mini facial, hand and nail treatment and back/shoulder massage.",
  time: 75,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Packages with Facials").id,
  standard_price_cents: 5000
)

#facewaxing
face = Subcategory.create(
  name: "Face Waxing",
  description: "Using a gentle creme for sensitive skin",
  category_id: Category.find_by_name("Waxing").id
)
eyebrowwax = Treatment.create(
  title: "Eyebrow Wax/ Thread",
  time: 15,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Face Waxing").id,
  standard_price_cents: 900
)

eyebrowreshape = Treatment.create(
  title: "Eyebrow Reshape Wax/ Thread",
  time: 20,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Face Waxing").id,
  standard_price_cents: 1300
)

menseyebrow = Treatment.create(
  title: "Mens Eyebrow Wax",
  description: "Starting from price given",
  variable_price: true,
  time: 10,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Face Waxing").id,
  standard_price_cents: 1000
)


upperliporchin = Treatment.create(
  title: "Upper Lip or Chin Wax/Thread",
  time: 15,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Face Waxing").id,
  standard_price_cents: 900
)

upperlipandchin = Treatment.create(
  title: "Upper Lip and Chin Wax/Thread",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Face Waxing").id,
  standard_price_cents: 1300
)



#bodywaxing
body = Subcategory.create(
  name: "Body Waxing",
  description: "Hair removal using a gentle creme for sensitive skin",
  category_id: Category.find_by_name("Waxing").id
)
underarm = Treatment.create(
  title: "Under arm Wax",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 1200
)

basicbikini = Treatment.create(
  title: "Basic Bikini Wax",
  time: 20,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 1500
)

hilegbikini = Treatment.create(
  title: "High Leg Bikini Wax",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 2000
)

halfleg = Treatment.create(
  title: "Half Leg Wax",
  time: 30,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 2200
)

threequarterleg = Treatment.create(
  title: "Three quarter Leg Wax",
  time: 45,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 2500
)

fullleg = Treatment.create(
  title: "Full Leg Wax",
  time: 60,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 2800
)

fulllegbasicbikini = Treatment.create(
  title: "Full Leg and Basic Bikini Wax",
  time: 80,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 3500
)

fulllegbasicbikini = Treatment.create(
  title: "Full Leg and High Leg Bikini Wax",
  time: 90,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 4000
)

menschest = Treatment.create(
  title: "Mens Chest or Back Wax",
  time: 30,
  variable_price: true,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Body Waxing").id,
  standard_price_cents: 2500
)

#arasys
arasys = Subcategory.create(
  name: "Arasys",
  description: "Each 17 minute session is equivalent to 250 sit-ups or 300 buttock raises. Widely known as the best faradic system",
  category_id: Category.find_by_name("Body Contour").id
)
singlesessionarasys= Treatment.create(
  title: "Arasys- Single Session",
  time: 17,
  description: "Each 17 minute session is equivalent to 250 sit-ups or 300 buttock raises. Widely known as the best faradic system",
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Arasys").id,
  standard_price_cents: 2000
)
coursearasys= Treatment.create(
  title: "Arasys- Course of 10",
  time: 1700,
  description: "Each 17 minute session is equivalent to 250 sit-ups or 300 buttock raises. Widely known as the best faradic system",
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Arasys").id,
  standard_price_cents: 15000
)



#xfit
xfit = Subcategory.create(
  name: "X-Fit Vibration Plate",
  description: "10 minutes on the X Fit burns fat, helps you lose weight, reduces cellulite, increases circulation and builds muscle tone.",
  category_id: Category.find_by_name("Body Contour").id
)

singlesessionxfit= Treatment.create(
  title: "X-Fit- 10 Minute Session",
  time: 10,
  description: "10 minute session burns fat, helps you lose weight, reduces cellulite, increases circulation and builds muscle tone.",
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("X-Fit Vibration Plate").id,
  standard_price_cents: 400
)

tencoursexfit= Treatment.create(
  title: "X-Fit- Course of 10",
  time: 1000,
  description: "10 minute session burns fat, helps you lose weight, reduces cellulite, increases circulation and builds muscle tone.",
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("X-Fit Vibration Plate").id,
  standard_price_cents: 3500
)
twentycoursexfit= Treatment.create(
  title: "X-Fit- Course of 20",
  time: 2000,
  description: "10 minute session burns fat, helps you lose weight, reduces cellulite, increases circulation and builds muscle tone.",
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("X-Fit Vibration Plate").id,
  standard_price_cents: 3500
)


#tintingperming
tintingperming2 = Subcategory.create(
  name: "Tinting & Perming",
  description: "Please note that a patch test is required at least 24 hours prior to tinting and perming",
  category_id: Category.find_by_name("Tinting & Perming").id
)
eyelashtint = Treatment.create(
  title: "Eyelash Tint",
  time: 20,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Tinting & Perming").id,
  standard_price_cents: 1100
)

eyebrowtint = Treatment.create(
  title: "Eyebrow Tint",
  time: 20,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Tinting & Perming").id,
  standard_price_cents: 900
)

lasheyebrowtint = Treatment.create(
  title: "Eyelash and Eyebrow Tint",
  time: 40,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Tinting & Perming").id,
  standard_price_cents: 1600
)

lashperming = Treatment.create(
  title: "Eyelash Perming",
  time: 20,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Tinting & Perming").id,
  standard_price_cents: 3000
)

lashpermingandtint = Treatment.create(
  title: "Eyelash Perm and Tint",
  time: 40,
  special_offer: false,
  subcategory_id: Subcategory.find_by_name("Tinting & Perming").id,
  standard_price_cents: 3500
)



#cosmetic
cosmetic = Subcategory.create(
  name: "Cosmetic Treatments",
  description: "Please contact us for a consulation",
  category_id: Category.find_by_name("Cosmetic Treatments").id
)



puts "Completed subcategory"
