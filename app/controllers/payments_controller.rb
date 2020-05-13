class PaymentsController < ApplicationController
  before_action :set_categories
  def new
    @voucher = current_user.vouchers.where(state: 'pending').find(params[:voucher_id])
  end

  private

  def set_categories
    @categories = Category.all
  end
end
