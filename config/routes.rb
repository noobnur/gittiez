Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/users', to: 'users#index' # READ all users
  # get '/users/:name', to: 'users#show' # READ one user by name

  # instead of writing the last two lines, we can run it in one line
  resources :users, only: [:index, :show]
end
