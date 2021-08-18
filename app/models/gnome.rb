class Gnome < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :favorites, dependent: :destroy
  CATEGORY = %w[Authentique Zombie Bdsm Familial Potache Zen Groupé Mignon Connu]
  COLOR = %w[Rouge Vert Blanc Jaune Orange Bleu Noir]
  MOOD = %w[Joyeux Triste Colérique Détendu]

  validates :name, :price, :photo, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :color, inclusion: { in: COLOR }
  validates :mood, inclusion: { in: MOOD }
end
