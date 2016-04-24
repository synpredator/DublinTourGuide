class Tour < ActiveRecord::Base
    
    has_many :tours, class_name:"TourTime", foreign_key: "tour_id"
    
    has_many :reviews
    
    has_many :tour_times, class: "TourTime", foreign_key: "tour_time_id"
    
  has_attached_file :image, styles: { medium: "400x245#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/    
  
 
   def self.search(search)
      where("title LIKE ?", "%#{search}%")
  end
  
end
