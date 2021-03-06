Rails.application.routes.draw do
  resources :users, only: [:index, :create]

  post '/login', to: 'authentication#login'
  get '/profile', to: 'users#profile'
end
