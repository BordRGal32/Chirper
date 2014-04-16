Chirper::Application.routes.draw do
 root to: 'users#index'

 get "signup", to: "users#new", as: "signup"
 get "login", to: "sessions#new", as: "login"
 get "logout", to: "sessions#destroy", as: "logout"

 match('follow/:id', {:via => :get, :to => 'followers#create'})

 resources :users, :except => [:new]
 resources :sessions, :only => [:create]
 resources :followers, :except => [:create]
 resources :chirps
end
