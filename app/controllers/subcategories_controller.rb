class SubcategoriesController < ApplicationController
  def new
    @categories = Category.all
    @subcategory = Subcategory.new
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)
    if @subcategory.save!
      redirect_to root_path
    else
      render :new
    end
  end
end

def subcategory_params
  params.require(:subcategory).permit(:description, :name, :category_id)
end
