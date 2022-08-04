Rails.application.routes.draw do
  get 'kitchens/add_kitchen'
  get 'sessions/login'
  get 'users/new'
  get "/home", to: "suvaicious#index"
  get "about_us", to: "suvaicious#about_us"
  get "/login", to: "sessions#login", as: 'login'
  get 'register', to: "users#register"
  post "/create", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout",to: "sessions#destroy", as: :destroy_session
  get "subscription" , to: "suvaicious#subscription"
  post '/subscription', to: 'suvaicious#sub_create'
  get 'add_kitchen' , to: "kitchens#add_kitchen"
  get 'add_kitchen_form' , to:"kitchens#add_kitchen_form"
  resources :users
  resources :sessions, only: [:login, :create, :destroy]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
