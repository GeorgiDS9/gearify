Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gears do
    resources :bookings, only: [ :new, :create ]
  end
  get 'users/profile', to: 'users#profile', as: 'profile'
  resources :bookings, only: [ :destroy ] do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :show ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
