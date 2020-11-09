Rails.application.routes.draw do
  # get 'cars/index'
  # get 'cars/show'


  get 'cars/index', to: 'cars#index'
  get 'cars/show', to: 'cars#show'
  resources :cars, only: [:index, :show]

end
