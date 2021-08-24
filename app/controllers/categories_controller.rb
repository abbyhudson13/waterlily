class CategoriesController < ApplicationController
  before_action :set_categories
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def index
  end

  def show
    @category = Category.find_by(name: params[:name])
  end

  private

  def category_params
    params.require(:name).permit(:description, :photo)
  end

  def set_categories
    @categories = Category.all
  end
end
