Redit::Application.routes.draw do
 root "stories#index"

 resources :users, only: [:new, :create, :show]

 resources :stories, only: [:new, :create, :show]

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
end
