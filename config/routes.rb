Rails.application.routes.draw do
  get "home", to: "suvaicious#index"
  get "about_us", to: "suvaicious#about_us"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
