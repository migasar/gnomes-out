class Gnome < ApplicationRecord
  belongs_to :user
  CATEGORY = %w[authentique zombie bdsm familial potache zen groupé mignon connu]
  COLOR = %w[rouge vert blanc jaune orange bleu noir]
  MOOD = %w[joyeux triste colèrique détendu]

  validates :name, :price, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :color, inclusion: { in: COLOR }
  validates :mood, inclusion: { in: MOOD }
end
