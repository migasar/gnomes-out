class Gnome < ApplicationRecord
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :favorites, dependent: :destroy
  CATEGORY = %w[authentique zombie bdsm familial potache zen groupé mignon connu]
  COLOR = %w[rouge vert blanc jaune orange bleu noir]
  MOOD = %w[joyeux triste colérique détendu]

  validates :name, :price, :photo, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :color, inclusion: { in: COLOR }
  validates :mood, inclusion: { in: MOOD }
end
