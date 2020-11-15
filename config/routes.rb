Rails.application.routes.draw do
# get 'colours/index'
  root 'pages#home'
  get 'contact_us', to: 'pages#contact_us'
  get 'account/your_cars', to: 'pages#your_cars', as: 'your_cars'
  get 'payments/success', to: 'payments#success'

  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations' 
  } 

  resources :cars#, path: 'auto'
  resources :colours, only: [:index]
  resources :payments
  



end
