Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  resources :events
  get "/users/:id", to: "users#show", as: "user"

  get '/users/:user_id/events/:id', to: "attending_events#new", as: "new_attending_event"
  post '/users/:user_id/events/:id', to: "attending_events#create", as: "create_attending_event"
  get '/users/:id/attended_events', to: "users#show_attended_events", as: "show_attended_events"
  delete '/users/:user_id/events/:id', to: "attending_events#destroy", as: "destroy_attending_event"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"

end
