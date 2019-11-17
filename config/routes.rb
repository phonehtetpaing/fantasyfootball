Rails.application.routes.draw do
  resources :match_results
  resources :games
  resources :teams
  resources :users
  get '/ranking', to: 'teams#ranking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
