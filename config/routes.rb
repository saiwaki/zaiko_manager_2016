Rails.application.routes.draw do
  resources :orders, only: [:create]
  resources :ships, only: [:create]
  resources :stocks, only: [:index]
  root to: "stocks#welcome"
end
