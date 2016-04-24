Rails.application.routes.draw do

 
  get '/faq' => 'faq#index'
  get '/about' => 'about#index'

  resources :user_bookings

  resources :bookings

  resources :tour_times

  devise_for :users
  resources :tours do
      resources :reviews, except: [:show, :index]
  end
  resources :users do
    resources :orders
 end
  
  root 'tours#index'
 

end
