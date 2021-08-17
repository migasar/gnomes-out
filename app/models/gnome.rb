class Gnome < ApplicationRecord
  belongs_to :user
  CATEGORY = %w[authentique zombie bdsm familial potache zen groupé mignon connu]
  COLOR = %w[rouge vert blanc jaune orange bleu noir]
  MOOD = %w[joyeux triste colérique détendu]

  validates :name, :price, :photo, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :color, inclusion: { in: COLOR }
  validates :mood, inclusion: { in: MOOD }
end
