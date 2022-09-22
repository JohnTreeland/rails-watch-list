Rails.application.routes.draw do
  get 'bookmarks/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[create]
  end
  resources :bookmarks, only: [:destroy]


  # Defines the root path route ("/")
  # root "articles#index"
end
