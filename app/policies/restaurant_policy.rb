class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope = Restaurant
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    record.user == user || user_is_admin?
  end
  private

  def user_is_admin?
    user.admin?
  end
end
