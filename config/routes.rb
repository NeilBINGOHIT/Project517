Rails.application.routes.draw do

  root to: 'visitors#index'

  devise_for :users
  resources :users
  #get '/users' => 'users#index'

  resources :projects
  get '/projects/index' => 'projects#index'
  post '/projects/:id/edit/update' => 'projects#update'
  resources :stories
  get '/stories/index' => 'stories#index'#, :as => :stories_index

end
