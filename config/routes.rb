Rails.application.routes.draw do
  resources :algos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "algos#index"
end
