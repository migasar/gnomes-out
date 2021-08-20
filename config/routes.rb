Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :gnomes do
    collection do
      get :my_gnomes
    end
    resources :bookings, only: [:index, :show, :new, :create, :edit, :update, :delete] do
      get :validate, on: :member
    end
  end
end
