# rubocop:disable all
Rails.application.routes.draw do 
  root 'users#index'
  post 'users/:user_id/posts/:id/create_like', to: 'likes#create', as: 'like_create'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: %i[new create]
    end
  end
end
