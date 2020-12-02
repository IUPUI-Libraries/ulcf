class PhotoUsagePolicy < ApplicationPolicy
  attr_reader :user, :photo_usage

  def initialize(user, photo_usage)
    @user = user
    @photo_usage = photo_usage
  end

  def new?
    true
  end

  def edit?
    return true if @user.admin? || @user.editor?

    false
  end

  def show?
    return true if @user.admin? || @photo_usage.user == @user

    false
  end

  def destroy?
    return true if @user.admin?

    false
  end
end
