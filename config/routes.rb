Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :users
  resources :guest_episodes

  root 'sessions#new'

  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions/new', to: 'sessions#create', as: 'create_session'
  delete '/sessions/logout', to: 'sessions#destroy', as: 'logout'
end
