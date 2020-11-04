class StripeCheckoutSessionService
  def call(event)
    voucher = Voucher.find_by(checkout_session_id: event.data.object.id)
    voucher.update(state: 'paid')
    @user = voucher.user
    UserNotifierMailer.voucher_purchase_email(@user).deliver
    UserNotifierMailer.notify_waterlily_email(@user).deliver
  end
end
