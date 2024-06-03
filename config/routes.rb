Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"

  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
