class TreatmentPolicy < ApplicationPolicy
  attr_reader :user, :treatment

  def initialize(user, treatment)
    @user = user
    @treatment = treatment
  end

  def create?
    user.admin
  end

  def new?
    user.admin
  end

  def update?
    user.admin
  end

  def destroy?
    user.admin
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
