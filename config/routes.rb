Rails.application.routes.draw do
  get 'posts', to: 'posts#index', as: 'posts'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#show', as: 'post'
  delete 'posts/:id', to: 'posts#destroy', as: 'delete_post'
  root 'posts#index'
end
