Rails.application.routes.draw do
  post 'sessions/create', to: 'sessions#create', as: 'login'
  match 'sessions/destroy', to: 'sessions#destroy', as: 'logout', via: [:get, :delete]
  get 'sessions/create'
  get 'sessions/destroy'
  get 'user/new'
  post 'user/create'
  root 'homepage#Index'
  resources :employees
  get '/statistics', to: 'homepage#statistics'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
