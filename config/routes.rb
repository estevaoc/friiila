Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'bills/index'

  get 'bills/new'

  get 'bills/create'

  get 'bills/edit'

  get 'bills/update'

  get 'bills/show'

  get 'bills/destroy'

  resources :places do
    collection do
      get 'my_places', to: "places#my_places"
    end
  end
end
