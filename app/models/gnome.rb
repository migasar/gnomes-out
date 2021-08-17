class Gnome < ApplicationRecord
  belongs_to :user

  validates :name, :price, presence: true
  validates :category, inclusion: { in: [
    "authentique",
    "zombie",
    "bdsm",
    "familial",
    "potache",
    "zen",
    "groupé",
    "mignon",
    "connu"
    ] }
  validates :color, inclusion: { in: [
    "rouge",
    "vert",
    "blanc",
    "jaune",
    "orange",
    "bleu",
    "noir"
    ] }
  validates :mood, inclusion: { in: [
    "joyeux",
    "triste",
    "colèrique",
    "détendu"
    ] }
end
