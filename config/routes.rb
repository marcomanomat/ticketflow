Rails.application.routes.draw do
  

  get 'members/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :tickets
  resources :members
 
  root 'members#index'
end
