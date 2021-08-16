class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gnome

  validates :user_id, :gnome_id, :date_start, :date_end, :price_total, presence: true
end
