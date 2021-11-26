class PaymentsController < ApplicationController
  before_action :set_categories, :authenticate_user!
  
  def new
    @voucher = current_user.vouchers.where(state: "pending").find(params[:voucher_id])
    authorize @voucher
  end

  private

  def set_categories
    @categories = Category.all
  end
end
