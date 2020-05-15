class VouchersController < ApplicationController
  before_action :authenticate_user!, only: :create
  before_action :set_categories

  def new
    @voucher = Voucher.new
  end

  def create
    treatment = Treatment.find(params[:voucher][:treatment_id])
    message = params[:voucher][:message]
    letters = (0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a
    voucher_code = Date.today.strftime("%Y%m") + letters.sample(8).join
    expiry_date = (Date.today + 6.months)
    voucher  = Voucher.create!(treatment: treatment, treatment_name: treatment.title, amount: treatment.standard_price, state: 'pending', user: current_user, message: message, voucher_code: voucher_code, expiry_date: expiry_date)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: treatment.title,
        amount: treatment.standard_price_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: voucher_url(voucher),
      cancel_url: voucher_url(voucher)
    )
    voucher.update(checkout_session_id: session.id)
    redirect_to new_voucher_payment_path(voucher)
  end

  def show
    @voucher = Voucher.find(params[:id])
  end

private

  def set_categories
    @categories = Category.all
  end
end
