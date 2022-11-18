Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: %i[index show new create]
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[add destroy]
  end
end
