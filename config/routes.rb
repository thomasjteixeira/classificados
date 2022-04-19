Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#show"

  get "/users/new", to: "users#new"
  post "/users", to: "users#create"

  #login
  get "/sessions/new", to: "sessions#new"
end
