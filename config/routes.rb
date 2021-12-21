Rails.application.routes.draw do
  devise_for :users
  resources :letters
<<<<<<< HEAD
  root to: "users#index"
=======

  root "letters#index"
>>>>>>> 7c52fa1 (feat:newemail_view)
end
