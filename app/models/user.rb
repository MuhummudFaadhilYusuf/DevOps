class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_profile, dependent: :destroy

  has_many :address, dependent: :destroy

  accepts_nested_attributes_for :user_profile
  validates_associated :user_profile

  accepts_nested_attributes_for :address
  validates_associated :address
end
