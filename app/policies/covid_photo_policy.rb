class CovidPhotoPolicy < ApplicationPolicy
  attr_reader :user, :covid_photo

  def initialize(user, covid_photo)
    @user = user
    @covid_photo = covid_photo
  end

  def new?
    true
  end

  def edit?
    return true if @user.admin? || @user.editor?

    false
  end

  def show?
    return true if @user.admin? || @covid_photo.user == @user

    false
  end

  def destroy?
    return true if @user.admin?

    false
  end
end
