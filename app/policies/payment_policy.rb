class PaymentPolicy < ApplicationPolicy
  attr_reader :user, :payment

  def initialize(user, payment)
    @user = user
    @payment = payment
  end

  def create?
    true
  end

  def new?
    true
  end

  def show?
    record.user == user
  end
end
