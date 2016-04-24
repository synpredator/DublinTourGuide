class Passenger < ActiveRecord::Base
    
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
	
	has_many :bookings, through: :user_bookings
	has_many :user_bookings
	has_many :tour_times, through: :bookings
	
end
