class TourTime < ActiveRecord::Base
  belongs_to :tour, class_name: "Tour"
  
  has_many :booking
  has_many :passengers, through: :user_bookings
  
  
  def self.date_list
      date = TourTime.all.order(departure_date: :asc)
      date.map {|n| n.departure_date.strftime("%d/%m/%Y") }.uniq
  end
  
  def self.search(tour, date, passanger)
      TourTime.where(tour_id: tour, departure_date: TourTime.correct_date(date))
    
  end
  
 
	def self.correct_date(date)
		unless date.nil?
			date = date.to_date
			date.beginning_of_day..date.end_of_day
		end
	end	
  
  
end
