Rails.application.routes.draw do
  
  devise_for :users
  resources :posts

  resources :messages, only: [:create, :new]

  root "posts#index"

  get 'about/index', to: 'about#index'
  
end
