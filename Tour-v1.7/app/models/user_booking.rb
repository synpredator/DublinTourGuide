class UserBooking < ActiveRecord::Base
  belongs_to :booking
  belongs_to :passenger
end
