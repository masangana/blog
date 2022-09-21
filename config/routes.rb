Rails.application.routes.draw do
  #get 'comments/new'
  #get 'comments/create'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show] do
      resources :comments, only: %i[new create]
    end
  end
end
