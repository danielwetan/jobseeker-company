Rails.application.routes.draw do
  resources :manufacturers
  resources :suppliers
  resources :categories
  devise_for :users
  # get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#index'
  get 'pages/index'

  get '/profile', to: "pages#profile", as: 'get_profile'
  patch '/profile', to: 'pages#update_profile', as: 'update_profile'

end
