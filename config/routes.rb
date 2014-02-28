Redit::Application.routes.draw do
 root "stories#index"

 resources :users, only: [:new, :create, :show]

  get "/login", to: "session#new"
  post "/session", to: "session#create"
end
