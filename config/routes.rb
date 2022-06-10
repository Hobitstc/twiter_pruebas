Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tweets#index"

  resources :tweets

  resources :users, only: [:show]

  resources :followers, only: [:create, :destroy]



 #get 'form', to: 'tweets#new' 

end
