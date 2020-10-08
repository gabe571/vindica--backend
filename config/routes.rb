Rails.application.routes.draw do
  resources :coffee_shops
  resources :reviews
  resources :favorites
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
