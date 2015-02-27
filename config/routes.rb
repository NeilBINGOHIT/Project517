Rails.application.routes.draw do
  resources :stories

  resources :projects

  root to: 'visitors#index'
  get '/stories/:id', to 'stories#show', as 'story'

  devise_for :users
  resources :users
end
