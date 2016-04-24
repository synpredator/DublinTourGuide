class AddUserIdToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :user, index: true
    add_foreign_key :bookings, :user
  end
end
