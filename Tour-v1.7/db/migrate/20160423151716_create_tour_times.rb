class CreateTourTimes < ActiveRecord::Migration
  def change
    create_table :tour_times do |t|
      t.references :tour, index: true
      t.integer :duration
      t.datetime :departure_date

      t.timestamps null: false
    end
    add_foreign_key :tour_times, :tours
  end
end
