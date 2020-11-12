Rails.application.routes.draw do
root 'pages#home'
get 'contact_us', to: 'pages#contact_us'
get 'account/your_cars', to: 'pages#your_cars'
# post 'cars/new', to: 'cars#new'

devise_for :users, controllers: {
  sessions: 'users/sessions', 
  registrations: 'users/registrations' 
} 

  # get 'cars', to: 'cars#index'
  # get 'cars/:id', to: 'cars#show'
  # post 'cars/:id', to: 'cars#create'
  resources :cars , only: [:index, :show, :create]#, path: 'auto'
  # resources :users, only: [:sign_in, :sign_up, :sign_out]


end
