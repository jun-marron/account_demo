Rails.application.routes.draw do
  devise_for  :users
  resources :users, only: [:show]

  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
