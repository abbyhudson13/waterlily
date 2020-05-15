class VoucherPolicy < ApplicationPolicy
  attr_reader :user, :voucher

  def initialize(user, voucher)
    @user = user
    @voucher = voucher
  end

  def create?
    return true
  end

  def new?
    return true
  end

  def show?
    @voucher.user == user || user.admin
  end

end
