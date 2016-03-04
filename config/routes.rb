Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: :create
  end

  resources :comments, only: [:show, :destroy]

  root "posts#index"
end
