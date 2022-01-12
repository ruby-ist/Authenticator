Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
    get "users/auth/github", to: "users/omniauth_callbacks#github", as: :user_github_omniauth_authorize
    post "users/auth/github", to: "users/omniauth_callbacks#github", as: :user_github_omniauth_authorize
  end
  devise_scope :user do
    get "users/sign_out", to: "devise/sessions#destroy"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root 'dashboard#index'
  get 'users/:id', to: 'dashboard#index', as: :user
end
