Rails.application.routes.draw do
  root to: "welcome#index"

  get "/signup", to: "users#new"
  get "/profile", to: "users#show"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :ideas
  resources :users, only: [:create]
  resources :categories
  resources :images
end
