Rails.application.routes.draw do
  get 'members/index'

  resources :tickets
  resources :members
 
  root 'members#index'
end
