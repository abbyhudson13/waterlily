class VouchersController < ApplicationController
  def create
    treatment = Treatment.find(params[:teddy_id])
    voucher  = Voucher.create!(treatment: treatment, amount: treatment.standard_price, state: 'pending')

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: treatment.title,
        amount: treatment.standard_price_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(voucher),
      cancel_url: order_url(voucher)
    )

    voucher.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(voucher)
  end

end
