Rails.application.routes.draw do
  # get 'static_pages/home'
  # get 'static_pages/help'
  # resources :microposts
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root "users#index"
  # Defines the root path route ("/")
  # root "articles#index"

  get "static_pages/home"
  get "static_pages/help"
  root "application#hello"
end
