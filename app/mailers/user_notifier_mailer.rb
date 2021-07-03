class UserNotifierMailer < ApplicationMailer
  default :from => 'indulge@water-lily.co.uk'

  def voucher_purchase_email(user, voucher)
    @user = user
    @voucher = voucher
    mail( :to => @user.email,
      :subject => 'Thank you for your gift voucher purchase!')
  end

  def notify_waterlily_email(user)
    mail( :to => 'indulge@water-lily.co.uk',
    :subject => 'A gift voucher has been purchased')
  end
end
