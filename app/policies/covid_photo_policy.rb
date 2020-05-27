class CovidPhotoPolicy < ApplicationPolicy
  attr_reader :user, :covid_photo

  def initialize(user, covid_photo)
    @user = user
    @covid_photo = covid_photo
  end

  def new?
    @user.admin?
  end

end
