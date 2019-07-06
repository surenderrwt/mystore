Rails.application.routes.draw do

  resources :orders
  get 'ships/getstates' => 'ships#getstates'
  

  

  controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
  end

  resources :ships
  resources :users
  resources :states
  resources :countries
  resources :line_items
  resources :carts
  root 'pages#index', as: 'pages_index'

  get 'pages/about'

  get 'pages/contact'

  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
