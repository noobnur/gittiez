Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/users', to: 'users#index' # READ all users

  # instead of writing each route line by line,
  # we can run it in one line
  root 'pages#home'
  # devise routes
  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login', sign_out: 'logout',
      sign_up: 'register'
    },
    controllers: {
      omniauth_callbacks: 'omniauth_callbacks'
    }
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy'
  end

  resources :users, only: [:index]
  # need to create this, because by default `resources` automatically
  # expect `/:id`
  get '/users/:name', to: 'users#show' # READ one user by name

  resources :users do
    resources :projects, except: [:edit]
  end

  resources :comments, only: [:index]

  resources :projects do
    resources :photos, only: [:index]
  end

  # custom routes to view all photos by a specific user
  get '/photos', to: 'photos#allphotos'
  get '/scrape', to: 'pages#scrape'


end
