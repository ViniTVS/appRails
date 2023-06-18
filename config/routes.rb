Rails.application.routes.draw do
  resources :sinopses
  resources :livros
  resources :editoras
  resources :autors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
