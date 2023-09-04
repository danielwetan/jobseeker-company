Rails.application.routes.draw do
  resources :categories
  devise_for :users
  # get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#index'
  get 'pages/index'

end
