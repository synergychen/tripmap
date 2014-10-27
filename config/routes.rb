Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "trips#index"

  resources :trips do
    resources :locations, only: [:new, :create, :edit, :update, :destroy]
  end
end
