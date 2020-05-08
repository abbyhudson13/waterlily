class VouchersController < ApplicationController
  before_action :authenticate_user!, only: :create

  def new
    @categories = Category.all
    @voucher = Voucher.new
  end

  def create
    treatment = Treatment.find(params[:voucher][:treatment_id])
    voucher  = Voucher.create!(treatment: treatment, treatment_name: treatment.title, amount: treatment.standard_price, state: 'pending', user: current_user)
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
    @categories = Category.all
  end
end
