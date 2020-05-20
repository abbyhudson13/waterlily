class PagesController < ApplicationController
before_action :set_categories, :set_offers
  def set_categories
    @categories = Category.all
  end

  def home
      @subcategories = Subcategory.pluck(:name).sort
  end

  def set_offers
    @special_offers = Treatment.where(special_offer: true)
  end

  def dashboard
    @treatments = policy_scope(Treatment)
  end
end
