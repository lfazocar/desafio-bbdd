Rails.application.routes.draw do
  # resources :series, only: [:index, :create, :new]

  # GET routes
  get 'documentary_films/index'
  get 'documentary_films', to: 'documentary_films#index'
  get 'documentary_films/new'
  get 'series/index'
  get 'series', to: 'series#index'
  get 'series/new'
  get 'movies/index'
  get 'movies', to: 'movies#index'
  get 'movies/new'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # POST routes
  post 'documentary_films' => 'documentary_films#create'
  post 'series' => 'series#create'
  post 'movies' => 'movies#create'

  root 'pages#home'

end
