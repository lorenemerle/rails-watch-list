Rails.application.routes.draw do
  get "movies", to: "movies#index"
  get "movies/:id", to: "movies#show"

  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  get "lists/:id", to: "lists#show", as: :list
  post "lists", to: "lists#create"

  get "bookmarks", to: "bookmarkss#index"
  get "bookmarks/new", to: "bookmarks#new"
  get "bookmarks/:id", to: "bookmarks#show", as: :list
  post "bookmarks", to: "bookmarks#create"
  get "bookmarks/:id/edit", to: "bookmarks#edit"
  patch "bookmarks/:id", to: "bookmarks#update"
  delete "bookmarks/:id", to: "bookmarks#destroy"
end
