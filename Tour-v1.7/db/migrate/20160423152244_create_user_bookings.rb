class CreateUserBookings < ActiveRecord::Migration
  def change
    create_table :user_bookings do |t|
      t.references :booking, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_bookings, :bookings
    add_foreign_key :user_bookings, :users
  end
end
