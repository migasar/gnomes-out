class AddCoordinatesToGnome < ActiveRecord::Migration[6.0]
  def change
    add_column :gnomes, :latitude, :float
    add_column :gnomes, :longitude, :float
    add_column :gnomes, :address, :text
  end
end
