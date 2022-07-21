Rails.application.routes.draw do
  root "suvaicious#index"
  
  get 'sessions/login'
  get 'users/new'
  get "home", to: "suvaicious#index"
  get "about_us", to: "suvaicious#about_us"
  get "user/register", to: "users#register"
  get "user/home", to: "suvaicious#index"
  get "/login", to: "sessions#login", as: 'login'
  get 'register', to: "users#register"
  get "home", to: "suvaicious#index"
  post "/create", to: "users#create"
  post "/login", to: "sessions#create"
  resources :users
  resources :sessions, only: [:login, :create, :destroy]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
