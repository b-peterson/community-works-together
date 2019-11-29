Rails.application.routes.draw do
  resources :comments
  resources :groups
  resources :locations
  devise_for :users
  resources :events
  root 'landing_page#index'
end
