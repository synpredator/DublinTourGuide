class AddTourTimeIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :tour_time_id, :integer
  end
end
