Rails.application.routes.draw do
  get '/:id/cart', to: 'cart#index'
  resources :cart
  get 'home/index'
  devise_for :users
  post 'cart/:id', to: 'cart#post'
  root to: "home#index"
  get '/test', to: 'test#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :product
  resources :charges
end
