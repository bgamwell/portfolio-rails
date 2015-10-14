Rails.application.routes.draw do

  root "site#index"

  resources :users, only: [:new, :create, :show]

end

# Prefix Verb URI Pattern          Controller#Action
# root GET  /                    site#index
# users POST /users(.:format)     users#create
# new_user GET  /users/new(.:format) users#new
# user GET  /users/:id(.:format) users#show
