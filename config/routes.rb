Rails.application.routes.draw do
  devise_for :users

  root to: "prototypes#index"
  resources :users, only: [:new, :create, :destroy ]
  resources :prototypes, only: [:new, :create, :show]

end
