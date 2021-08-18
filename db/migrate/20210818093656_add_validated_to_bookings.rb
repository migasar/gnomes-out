class AddValidatedToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :validated, :boolean, null: false, default: false
  end
end
