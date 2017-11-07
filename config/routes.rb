Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/users', to: 'users#index' # READ all users

  # instead of writing each route line by line,
  # we can run it in one line
  root 'pages#home'
  # devise routes
  devise_for :users

  resources :users, only: [:index]
  # need to create this, because by default `resources` automatically
  # expect `/:id`
  get '/users/:name', to: 'users#show' # READ one user by name

  resources :projects, only: [:index, :show, :create, :update, :destroy]
end
