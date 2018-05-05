Rails.application.routes.draw do
  get 'welcome/index'

  resources :tickets
 
  root 'welcome#index'
end
