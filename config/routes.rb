Redit::Application.routes.draw do
 root "stories#index"

 resources :users, only: [:new, :create, :show]
 # add routes for user actions
end
