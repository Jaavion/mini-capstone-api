Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/products', controller: 'products', action: "index"
  get "products/:id", controller: 'products', action: 'show'
  post "/products", controller: "products", action: "create"
  delete "/products/:id", controller: "products", action: "destroy"
  patch "/products/:id", controller: "products", action: "update"
  post "/users", controller: "users", action: "create"
  post "/sessions", controller: "sessions", action: "create"
  get "/orders", controller: "orders", action: "index"
  post "/orders", controller: "orders", action: "create"
  get "/orders/:id", controller: "orders", action: "show"

end