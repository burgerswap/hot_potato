Rails.application.routes.draw do
  devise_for :users
  resources :leftovers
  root to: "homepage#index"
end
