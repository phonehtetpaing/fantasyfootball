Rails.application.routes.draw do
  resources :games
  resources :matches
  resources :teams
  resources :users
  get '/ranking', to: 'teams#ranking'
  root 'teams#ranking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
