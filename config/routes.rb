Rails.application.routes.draw do
  root "trips#index"

  resources :trips do
    resources :locations, only: [:new, :create]
  end
end
