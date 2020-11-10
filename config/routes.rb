Rails.application.routes.draw do
root 'pages#home'

# /users/sign_in & /users/sign_up
devise_for :users, controllers: {
  sessions: 'users/sessions', 
  registrations: 'users/registrations' 
} 


  # get 'cars', to: 'cars#index'
  # get 'cars/:id', to: 'cars#show'
  # post 'cars/:id', to: 'cars#create'
  resources :cars, only: [:index, :show, :create]#, path: 'auto'

  resources :users, only: [:sign_in, :sign_up]


end
