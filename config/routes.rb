Rails.application.routes.draw do
  resources :topics
  devise_for :users

  root to: "home#index"

  resources :categories
  resources :messages
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
