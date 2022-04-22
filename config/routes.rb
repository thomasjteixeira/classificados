Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#show"

  resources :users, only: [:new, :create]

  #login
  resources :sessions, only: [:new]
end
