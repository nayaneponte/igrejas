Rails.application.routes.draw do
  resources :masses
  resources :confessions

  #get 'confessions/indes'
  #get 'masses/index'
  #get 'churches/index'
  get "/churches", to: "churches#index"


  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
