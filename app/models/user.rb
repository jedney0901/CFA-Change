class User < ApplicationRecord
  mount_uploader :image, AvatarUploader
  rolify
  has_one :profile
  has_many :debates
  after_create :assign_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
end
