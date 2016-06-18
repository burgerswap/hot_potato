Rails.application.routes.draw do
  resources :consumptions
  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}
  resources :leftovers
  root to: "homepage#index"
  get 'homepage/search'
end
