Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resources :letters
  root to: "users#index"
end
