class Booking < ActiveRecord::Base
    belongs_to :tour_time
    belongs_to :user
    has_many :user_bookings
    has_many :passengers, through: :user_bookings
    
    validates :tour_time_id, presence: true
    
    accepts_nested_attributes_for :passengers
end
