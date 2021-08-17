class BookingPolicy < ApplicationPolicy
  def index?
    record.user == user
  end

  def show?
    record.user == user
  end

  def create?
    return true
  end

  def new?
    create?
  end

  def update?
    record.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
