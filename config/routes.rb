Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  ressources :users, only: [:index, :show]
  ressources :posts, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end
