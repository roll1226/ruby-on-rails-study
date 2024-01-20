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
  get "static_pages/about"
  get "static_pages/contact"
  # root "application#hello"
  root "static_pages#home"
end
