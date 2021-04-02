Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # user story
  root to: "lists#index"
  # A user can see all the lists
  get "lists", to: "lists#index"
   # creat new list post
  post "lists", to: "lists#create"
  # A user can create a new list
  get "lists/new", to: "lists#new", as: 'new_list'
  # A user can see the details of a given list and its name
  get "lists/:id", to: "lists#show", as: 'list'

  get "lists/:list_id/bookmarks/new", to: "bookmarks#new", as: 'new_list_bookmark'
  post "lists/:list_id/bookmarks", to: "bookmarks#create", as: 'list_bookmarks'
  delete "bookmarks/:id", to: "bookmarks#destroy", as: "bookmark"


  # resources :lists, only: [:index, :new, :show, :create] do
  #   resources :bookmarks, only: [:new, :create]
  #   end
  #   resources :bookmarks, only: [:destroy]
  end

  # root to: "movies/index"
  # # as a user i can see all movies
  # get "/movies", to: "movies#index"
  # # as a user i can see a specific movie
  # get "/movies/:id", to: "movies/show"
  # # as a user i can destroy a movie but not if it's referenced in a bookmark
  # delete "movies/:id", to: "movies#destroy"


  # # as a user i can see all lists
  # get "/lists", to: "lists#index"
  # # as a user i can create a list ex. "drama"
  # get "/lists", to: "lists#new"
  # post "/lists", to: "lists#create"
  # # as a user i can show a specific list
  # get "/lists/:id", to: "lists#show"
  # # as a user i can destroy a list incl. the bookmarks but not the movies
  # delete "lists/:id", to: "lists#destroy"

  # # as a user I can
  # # as a user i can create a bookmark which belongs to a list and a movie and adds a movie to a list
  # get
  # # as a user i can destroy a bookmark
