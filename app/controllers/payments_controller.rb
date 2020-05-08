class PaymentsController < ApplicationController
  def new
    @voucher = current_user.vouchers.where(state: 'pending').find(params[:voucher_id])
  end
end
