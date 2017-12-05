Rails.application.routes.draw do
  root "static_pages#home"
  get "/search", to: "searches#search"
  get "/detail", to: "static_pages#detail"
  get "/product", to: "static_pages#product"
  delete "/logout", to: "sessions#destroy"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signup", to: "users#new"
  get "/detail", to: "static_pages#detail"
  get "/product", to: "static_pages#product"
  resources :static_pages
  resources :users
  resources :searches
end

