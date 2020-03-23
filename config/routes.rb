Rails.application.routes.draw do
  root to:"toppages#index"
  
  get "login" ,to: "sessions#new"
  post "login",to: "sessions#create"
  delete "logout",to: "sessions#delete"
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show,:create] do
    member do
      get :followings
      get :followers
      get :likes
    end
  end
  
  resources :microposts, only: [:create, :destroy]
  
  resources :relationships, only: [:create, :destroy]
  
  resources :favarites, only: [:create, :destroy]
  
end
