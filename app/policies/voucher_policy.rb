class VoucherPolicy < ApplicationPolicy
  attr_reader :user, :voucher

  def initialize(user, voucher)
    @user = user
    @voucher = voucher
  end

  def create?
    true
  end

  def new?
    true
  end

  def edit?
    user.admin
  end

  def update?
    user.admin
  end

  def show?
    @voucher.user == user || user.admin
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
end
