Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/places", controller: "places", action: "index"
  get "/places/:id", controller: "places", action: "show"
  post "/places/:id", controller: "places", action: "create"
  delete "places/:id", controller: "places", action: "delete"
end
