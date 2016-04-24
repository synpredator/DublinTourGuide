class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  
  has_many :tours
  has_many :reviews, dependent: :destroy
  has_many :user_bookings
  has_many :bookings
  has_many :tour_times, through: :bookings

 
end