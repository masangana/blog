Rails.application.routes.draw do
  #get 'comments/new'
  #get 'users/:user_id/:post_id/new_comment', to: 'comments#new', as: 'comment_new'
  #get 'comments/create'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create] do
      resources :comments, only: %i[new create]
    end
  end
end
