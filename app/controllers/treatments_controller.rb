class TreatmentsController < ApplicationController
  def new
    @subcategories = subcategories.all
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)
    if @treatment.save!
      redirect_to root_path
    else
      render :new
    end
  end
end

def treatment_params
  params.require(:treatment).permit(:description, :name, :subcategory_id, :standard_price, :time, :special_offer)
end
