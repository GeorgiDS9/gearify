Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gears, only: [ :index, :show, :new, :create, :destroy ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show ]
  get 'users/profile', to: 'users#profile', as: 'profile'
end
