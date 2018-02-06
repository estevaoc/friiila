Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :places do
    collection do
      get 'my_places', to: "places#my_places"
    end
    resources :bills, only: [:new, :create, :show] do
      collection do
        get 'my_open_bills', to: "bills#my_open_bills"
      end
      resources :orders
    end
  end
  resources :bills, only: [:index]
end
