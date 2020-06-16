class User < ApplicationRecord
  has_many :assignments
  has_many :roles, through: :assignments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:cas]

  def self.from_iucas(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.from_ads
    end
  end

  def from_ads
    info = LdapService.fetch_info(self.uid)
    self.email = info[:email] if info.key? :email
  end

  def role?(role)
    roles.any? { |r| r.name.underscore.to_sym == role }
  end

  def admin?
    role?(:admin)
  end

  def editor?
    role?(:editor)
  end

  def self.make_admin(user)
    return if user.admin?

    admin = Role.find_by(name: 'admin')
    admin.users << user
    admin.save
  end
end
