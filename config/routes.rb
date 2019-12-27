Rails.application.routes.draw do

  root 'books#index'
  root 'books#index', as: @home  

  resources :publishers
  resources :books
  resources :authors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
