Rails.application.routes.draw do
  devise_for :users, components: {registrations: 'registrations', sessions: 'sessions'}
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
  # Defines the root path route ("/")
  # root "articles#index"
  get "/homes", to: "homes#index"
  root "homes#index"
  
  get "/homes/network", to: "homes#network"
  get "/homes/group", to: "homes#group"
  get "/homes/bubble", to: "homes#bubble"
  get "/homes/map", to: "homes#map"
end
