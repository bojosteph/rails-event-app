Rails.application.routes.draw do
  
  #get    '/login',   to: 'sessions#new'
  #post   '/login',   to: 'sessions#create'
 # delete '/logout',  to: 'sessions#destroy'

  root :to => 'public#index'
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'
  post '/rsvp_events/create' => 'rsvp_events#create'

  resources :rsvp_events
  resources :events do
    resources :rsvp_events, only: [:create, :index]
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
