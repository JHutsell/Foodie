Rails.application.routes.draw do
  resources :comments
  resources :user_restaurants
  resources :follows
  resources :tokens
  resources :users
  post '/getRestaurant/:term', to: "restaurants#getRestaurants"
  post '/getRestaurantDetail/:id', to: "restaurants#getRestaurantDetail"
  get '/getFavRestaurants/:id', to: "user_restaurants#getFavRestaurants"
  get '/following/:id', to: "follows#following"
  post '/addlike', to: "restaurants#add_like"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
