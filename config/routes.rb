Rails.application.routes.draw do
  # User Routes
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  
  # Session Routes
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Recipe Routes 
  resources :recipes, only: [:index, :create]
  # get "/recipes", to: "recipes#index"
  # post "/recipes", to: "recipes#create"
end
