Rails.application.routes.draw do
<<<<<<< HEAD
  
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
=======
>>>>>>> parent of 52ebb3e (Add controllers for users)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  ressources :users, only: [:index, :show]
  ressources :posts, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end
