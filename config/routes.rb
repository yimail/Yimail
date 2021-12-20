Rails.application.routes.draw do
  devise_for :users
  resources :letters
  root to: "users#index"
end
