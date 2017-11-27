Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  # Long version
  get '/pages', to: 'pages#index'
  get '/pages/:id', to: 'pages#show'
  post '/pages', to: 'pages#create'
  put '/pages/:id', to: 'pages#update'
  delete '/pages/:id', to 'pages#destroy'
end
