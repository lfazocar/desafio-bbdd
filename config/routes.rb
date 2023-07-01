Rails.application.routes.draw do

  resources :series, only: [:index, :create, :new]

  # GET routes
  get 'documentary_films/index'
  get 'documentary_films/create'
  get 'documentary_films/new'
  # get 'series/index'
  # get 'series/create'
  # get 'series/new'
  get 'movies/index'
  get 'movies/create'
  get 'movies/new'

  # POST routes
  post 'documentary_films' => 'documentary_films#create'
  # post 'series' => 'series#create'
  post 'movies' => 'movies#create'

end
