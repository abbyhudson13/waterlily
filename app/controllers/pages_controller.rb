class PagesController < ApplicationController
  def home
    @categories = Category.all
    @special_offers = Treatment.where(special_offer: true)
  end

  def offers
    @categories = Category.all
    @special_offers = Treatment.where(special_offer: true)
  end
end
