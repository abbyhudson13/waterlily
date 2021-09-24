FactoryBot.define do
  factory :subcategory, class: Subcategory do
    description { "A 90 minute relaxing massage" }
    name { "90 Minute Thai massage" }
    category
  end
end
