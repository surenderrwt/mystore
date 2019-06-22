Rails.application.routes.draw do
  root 'pages#index', as: 'pages_index'

  get 'pages/about'

  get 'pages/contact'

  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
