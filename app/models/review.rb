class Review < ApplicationRecord
  belongs_to :gnome, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :comment, :rating, presence:true
  validates :rating, inclusion: { in: 1..5 }
end
