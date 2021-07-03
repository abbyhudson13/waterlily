# Preview all emails at http://localhost:3000/rails/mailers/user_notifier_mailer
class UserNotifierMailerPreview < ActionMailer::Preview
  def voucher_purchase_email
    @user = User.first
    @voucher = Voucher.first
    UserNotifierMailer.voucher_purchase_email(@user, @voucher)
  end

  def notify_waterlily_email
    @user = User.first
    @voucher = Voucher.first
    UserNotifierMailer.notify_waterlily_email(@user, @voucher)
  end
end
