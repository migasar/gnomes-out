class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gnomes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookings
  has_many :reviews
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
