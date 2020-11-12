Rails.application.routes.draw do
get 'colours/index'
root 'pages#home'
get 'contact_us', to: 'pages#contact_us'
get 'account/your_cars', to: 'pages#your_cars'
get 'cars/create', to: 'cars#create'

devise_for :users, controllers: {
  sessions: 'users/sessions', 
  registrations: 'users/registrations' 
} 

  # get 'cars', to: 'cars#index'
  # get 'cars/:id', to: 'cars#show'
  # post 'cars/:id', to: 'cars#create'
  resources :cars , only: [:index, :show, :create, :edit_car]#, path: 'auto'
  resources :colours, only: [:index]
  # resources :users, only: [:sign_in, :sign_up, :sign_out]



end
