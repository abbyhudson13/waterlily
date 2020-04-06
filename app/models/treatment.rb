class Treatment < ApplicationRecord
  belongs_to :subcategory
  belongs_to :category, through :subcategory
end
