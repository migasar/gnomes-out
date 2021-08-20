Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :gnomes do
    collection do
      get :my_gnomes
    end

    resources :reviews, only: [:new, :create, :index]

  resources :bookings do
    member do
      patch '/validate', to: 'bookings#validate'
    end

  end
  resources :review, only: [:destroy]
end
