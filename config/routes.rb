Rails.application.routes.draw do
  get 'users/show'
  get 'user/show'
  get 'admin/index'
  devise_for :users
  resources :users
  get 'authors/new'
  get 'authors/index'
  get 'authors/show'
  get 'chapters/new'
  get "sessions/new"
  get "/home", to: "static_pages#home"
  get "/signup", to: "users#new"
  root "static_pages#home"
  post "/signup",  to: "users#create"
  get  "/login", to: "sessions#new"
  post  "/login", to: "sessions#create"
  delete  "/logout", to: "sessions#destroy"
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :mangaks do
    resources :chapters
  end
  resources :charts, only: [] do
  collection do
    get 'sporters_by_age'
  end
end
  resources :admin
    resources :users do
  end
  resources :authors
  resources :genres
  resources :relationships, only: [:create, :destroy]
  resources :comments
end
