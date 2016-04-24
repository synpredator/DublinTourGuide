class DropTourTimes < ActiveRecord::Migration
  def change
    drop_table :tour_times
  end
end
