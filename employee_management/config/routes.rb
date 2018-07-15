Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  resources :managers do
    resources :employees, only: [:create, :destroy, :show]
  end

  get('/', { to: 'welcomes#index', as: 'home' })
  post('/users/search', {to: 'users#search'})
end
