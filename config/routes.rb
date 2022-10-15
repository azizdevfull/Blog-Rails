Rails.application.routes.draw do


authenticated :user, ->(user) { user.admin? || user.user? } do
  namespace :admin do
    root 'admin#dashboard'
    resources :users
    resources :posts
    end
end
  resources :posts
  devise_for :users
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
