Rails.application.routes.draw do
  devise_for :users
  resources :events
  root 'landing_page#index'
end
