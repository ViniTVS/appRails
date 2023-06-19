Rails.application.routes.draw do
  get 'welcome/index'
  resources :sinopses
  resources :livros
  resources :editoras
  resources :autors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
