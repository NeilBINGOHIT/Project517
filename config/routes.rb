Rails.application.routes.draw do
  resources :projects

  root to: 'visitors#index'


  resources :stories
  get '/stories/index' => 'stories#index'#, :as => :stories_index

  devise_for :users
  resources :users
end
