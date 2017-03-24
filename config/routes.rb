Rails.application.routes.draw do


  get 'sessions/create'
  get 'sessions/destroy'



  resources :people
  resources :users
  resources :rans
  resources :runs
  resources :cars

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'new'

  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
