Rails.application.routes.draw do
  get "movies", to: "movies#index"
  get "movies/:id", to: "movies#show"

   # get "lists", to: "lists#index"
   # get "lists/new", to: "lists#new"
   # get "lists/:id", to: "lists#show", as: :list
   # post "lists", to: "lists#create"
  resources :lists, only: [:new, :index, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  delete "bookmarks/:id", to: "bookmarks#destroy"
end
