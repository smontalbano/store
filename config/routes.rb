Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  resource :registration, only: [:new, :create]
  
  root "products#index"

  resources :products
end
