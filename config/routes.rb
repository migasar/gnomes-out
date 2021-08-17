Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gnomes do
    collection do
      get :my_gnomes
    end
    resources :bookings, only: [:index, :new, :create, :edit, :update, :delete]
  end
end
