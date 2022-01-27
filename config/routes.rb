Rails.application.routes.draw do
  root "courses#index"
  get "about", to: "pages#about"
  get "login", to: "logins#new"
  post "login", to: "logins#create"
  delete "logout", to: "logins#destroy"
  resources :courses, only: [:show, :new]
  resources :students, except: [:destroy]
end
