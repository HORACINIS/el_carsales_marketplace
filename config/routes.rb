Rails.application.routes.draw do

devise_for :users, controllers: {
  sessions: 'users/sessions', 
  registrations: 'users/registrations' 
} 


  get 'cars/index', to: 'cars#index'
  get 'cars/show', to: 'cars#show'
  resources :cars, only: [:index, :show]

end
