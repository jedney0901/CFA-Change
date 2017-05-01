class User < ApplicationRecord
  mount_uploader :image, AvatarUploader
  rolify
  has_one :profile
  has_many :debates
  has_many :submissions
  # after_create :assign_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

   def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
   end

  def admin?
    has_role?(:admin)
  end
end
