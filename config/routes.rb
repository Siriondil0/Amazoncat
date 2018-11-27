Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  
  root to: "home#index"
  get '/test', to: 'test#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :product
  resources :charges
end
