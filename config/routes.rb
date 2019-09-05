Rails.application.routes.draw do
  resources :comments
  resources :line_items
  resources :carts
  resources :items do 
    resources :comments
  end
  resources :orders
  devise_for :users
  resources :users
  get '/contact', :to=> 'pages#contact'
  get '/presentation', :to=> 'pages#presentation'
  root 'pages#index'
  resources :charges
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
