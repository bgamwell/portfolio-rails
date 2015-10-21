Rails.application.routes.draw do

  root "posts#index"

  resources :users, only: [:new, :create, :show]
  resources :posts

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/tags/:tag' => 'posts#index', as: :tag

end

# Prefix Verb   URI Pattern               Controller#Action
# root GET    /                         site#index
# users POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# user GET    /users/:id(.:format)      users#show
# posts GET    /posts(.:format)          posts#index
# POST   /posts(.:format)          posts#create
# new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
# post GET    /posts/:id(.:format)      posts#show
# PATCH  /posts/:id(.:format)      posts#update
# PUT    /posts/:id(.:format)      posts#update
# DELETE /posts/:id(.:format)      posts#destroy
# login GET    /login(.:format)          sessions#new
# POST   /login(.:format)          sessions#create
# logout GET    /logout(.:format)         sessions#destroy
