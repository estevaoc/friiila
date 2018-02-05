Rails.application.routes.draw do
  get 'bills/index'

  get 'bills/new'

  get 'bills/create'

  get 'bills/edit'

  get 'bills/update'

  get 'bills/show'

  get 'bills/destroy'

  get 'places/index'

  get 'places/new'

  get 'places/create'

  get 'places/edit'

  get 'places/update'

  get 'places/show'

  get 'places/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
