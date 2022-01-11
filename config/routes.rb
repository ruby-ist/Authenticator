Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'dashboard#index'
  get 'users/:id', to: 'dashboard#index', as: :user
end
