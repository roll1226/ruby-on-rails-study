Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "application#hello"
  # Defines the root path route ("/")
  # root "articles#index"
end
