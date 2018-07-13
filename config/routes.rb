Rails.application.routes.draw do
  devise_for :users
  resources :dishes, only: [:show]

  mount Cartify::Engine, at: '/'
  root controller: :menus, action: :index
  resources :dishes, only: [:show]
  resource :cart, only: %i[show update]
  resources :order_items, only: %i[create update destroy]
  resources :orders, only: %i[index show]
  resources :checkout

  match 'settings/addresses', to: 'addresses#index', via: 'get'
  match 'settings/addresses', to: 'addresses#create', via: 'post'
end


