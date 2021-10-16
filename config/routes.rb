Rails.application.routes.draw do
  root 'homepage#Index'
  resources :employees
  get '/statistics', to: 'homepage#statistics'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
