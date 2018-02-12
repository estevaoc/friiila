Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get 'stablish', to: 'pages#stablish'
  resources :places do
    collection do
      get 'my_places', to: "places#my_places"
    end
    resources :bills, only: [:new, :create, :show, :update] do
      collection do
        get 'my_open_bills', to: "bills#my_open_bills"
      end
    end
  end
  resources :bills, only: [:index] do
    resources :orders
  end
end
