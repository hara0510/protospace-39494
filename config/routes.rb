Rails.application.routes.draw do
  devise_for :users

  root to: "prototypes#index"
  resources :users, only: [:new, :create, :destroy ]
  resources :prototypes do
    resources :comments, only: [:create]
  end

end
