Rails.application.routes.draw do
  root "bboards#index"

  resources :bboards
end
