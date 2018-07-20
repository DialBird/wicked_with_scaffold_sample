Rails.application.routes.draw do
  get 'after_signup/show'
  root 'users#index'
  resources :users
end
