class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :gnome
end
