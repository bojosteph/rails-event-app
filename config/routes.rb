Rails.application.routes.draw do
  
  root :to => 'public#index'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :rsvp_events
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
