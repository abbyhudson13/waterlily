class PaymentPolicy < ApplicationPolicy
  attr_reader :user, :payment

  def initialize(user, payment)
    @user = user
    @payment = payment
  end

  def create?
    return true
  end

  def new?
    return true
  end

  def show?
    record.user == user
  end
end
