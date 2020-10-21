Rails.application.routes.draw do
  resources :coffee_shops
  resources :reviews
  resources :favorites
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/yelp', to: 'yelps#fetch'
  get '/search', to: 'yelps#search'
  # post '/favorites', to: 'favoritescreate'
  post '/favorites/:cafes', to: "favorites#create"
  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
end
                                                           
