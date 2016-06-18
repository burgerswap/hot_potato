Rails.application.routes.draw do
  resources :consumptions
  devise_for :users
  resources :leftovers
  root to: "homepage#index"
end
