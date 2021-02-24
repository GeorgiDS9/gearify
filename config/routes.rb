Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gears, only: [ :index, :show, :new, :create, :destroy ] do
    resources :bookings, only: [ :new, :create]
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
