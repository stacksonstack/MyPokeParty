Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pokemons, only: [:index, :show]
  resources :users
  resources :parties

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'

  get '/sessions/new_login', to: 'sessions#new_login', as: 'new_login'

  post '/sessions/new_login', to: 'sessions#login'
end
