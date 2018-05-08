Rails.application.routes.draw do
  get 'welcome/index'

  resources :tickets
  resources :members
 
  root 'welcome#index'
end
