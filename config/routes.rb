Rails.application.routes.draw do
  resources :cart
  get 'home/index'
  devise_for :users
  root to: "home#index"
  get '/test', to: 'test#test'
  post '/cart/checkout',  to:'cart#checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :product
end
