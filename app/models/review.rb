class Review < ApplicationRecord
  belongs_to :gnome
  belongs_to :user
  validates :comment, :rating, presence:true
  validates :rating, inclusion: { in: 1..5 }
end
