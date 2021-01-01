Rails.application.routes.draw do
  get 'mains/index'
  devise_for :users
  
  root to: "mains#index"
  resources :items do
    resources :orders, only: [:index, :create]
  end
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
