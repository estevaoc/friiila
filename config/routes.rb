Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :places do
    collection do
      get 'my_places', to: "places#my_places"
    end
    resources :bills, only: [:new, :create, :show]
  end
  resources :bills, only: [:index]
  end
end
