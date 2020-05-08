class PaymentsController < ApplicationController
  def new
    @categories = Category.all
    @voucher = current_user.vouchers.where(state: 'pending').find(params[:voucher_id])
  end
end
