Rails.application.routes.draw do

  resources :user_stocks, only: [:create, :destroy]

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'my_protfolio', to: 'users#my_protfolio'
  get 'search_stock', to: 'stocks#search'

  get 'search_friend', to: 'users#search'
  get 'friends', to: 'users#friends'
  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]


end
