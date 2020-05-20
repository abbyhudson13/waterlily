class UserNotifierMailer < ApplicationMailer
  default :from => 'indulge@water-lily.co.uk'

  def voucher_purchase_email(user)
    @user = user
    mail( :to => @user.email,
      :subject => 'Thank you for your gift voucher purchase!')
  end
end
