Rails.application.routes.draw do
  
  get 'sessions/login'
  get 'users/new'
  get "home", to: "suvaicious#index"
  get "about_us", to: "suvaicious#about_us"
  get "/login", to: "sessions#login", as: 'login'
  get 'register', to: "users#register"
  post "/create", to: "users#create"
  post "/login", to: "sessions#create"
  get "subscription" , to: "suvaicious#subscription"
  post '/subscription', to: 'suvaicious#sub_create'
  resources :users
  resources :sessions, only: [:login, :create, :destroy]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
