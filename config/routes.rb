Rails.application.routes.draw do
  resources :letters
  devise_for :users
  root "users#index"
end
