class PagesController < ApplicationController
before_action :set_categories, :set_offers
  def set_categories
    @categories = Category.all
  end

  def set_offers
    @special_offers = Treatment.where(special_offer: true)
  end
  
  def dashboard
  end
end
