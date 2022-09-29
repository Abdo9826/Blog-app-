Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root 'users#index'
  resources :users, only: [:index, :show] 
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
    resources :comments, only: [:new, :create]
    resources :likes, only: :create
  end
end
