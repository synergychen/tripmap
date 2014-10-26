Rails.application.routes.draw do
  root "trips#index"

  resources :trips do
    resources :locations, only: [:new, :create, :edit, :update]
  end
end
