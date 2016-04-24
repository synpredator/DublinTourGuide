class ChangeUserIdToPassangerId < ActiveRecord::Migration
  def change
    rename_column :user_bookings, :user_id, :passenger_id
  end
end
