class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:edit, :update, :destroy, :deactivate, :activate]
  before_action :set_categories
  def index
    if params[:query].present?
      sql_query = " \
      treatments.title ILIKE :query \
      OR subcategories.name ILIKE :query \
      OR subcategories.description ILIKE :query \
      OR treatments.description ILIKE :query \
      "
      @treatments = policy_scope(Treatment).active.joins(:subcategory).where(sql_query, query: "%#{params[:query]}%")
    else
      @treatments = policy_scope(Treatment).active
    end
  end

  def new
    @subcategories = Subcategory.all
    @treatment = Treatment.new
    authorize @treatment
  end

  def create
    @treatment = Treatment.new(treatment_params)
    if @treatment.save!
      redirect_to dashboard_path
    else
      render :new
    end
    authorize @treatment
  end

  def edit
  end

  def deactivate
    @treatment.deactivate!
    flash[:notice] = "Treatment has been deactivated"
    redirect_to dashboard_path
  end

  def activate
    @treatment.activate!
    redirect_to dashboard_path
    flash.now[:success] = "Treatment has been activated"
  end

  def update
    @treatment.update(treatment_params)
    if @treatment.save!
      redirect_to dashboard_path
    else
      render :edit
    end
    authorize @treatment
  end

  def destroy
    @treatment.destroy
    redirect_to dashboard_path
    authorize @treatment
  end

  private

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params
    params.require(:treatment).permit(:time, :title, :description, :title, :subcategory_id, :standard_price, :special_offer, :offer_price, :variable_price)
  end

  def set_categories
    @categories = Category.all
  end
end
