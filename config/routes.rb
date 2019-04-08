Rails.application.routes.draw do
  
  #get    '/login',   to: 'sessions#new'
  #post   '/login',   to: 'sessions#create'
 # delete '/logout',  to: 'sessions#destroy'

  root :to => 'public#index'
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'

  resources :rsvp_events
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
