Rails.application.routes.draw do
root 'pages#home'
get 'contact_us', to: 'pages#contact_us'
get 'user_account', to: 'pages#user_account'
# post 'cars/new', to: 'cars#new'

# /users/sign_in & /users/sign_up
devise_for :users, controllers: {
  sessions: 'users/sessions', 
  registrations: 'users/registrations' 
} 

  # get 'cars', to: 'cars#index'
  # get 'cars/:id', to: 'cars#show'
  # post 'cars/:id', to: 'cars#create'
  resources :cars , only: [:index, :show, :new]#, path: 'auto'
  # resources :users, only: [:sign_in, :sign_up, :sign_out]


end
