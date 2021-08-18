Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gnomes do
    collection do
      get :my_gnomes
    end
    resources :bookings, only: [:index, :show, :new, :create, :edit, :update, :delete] do

    end
  end
end
