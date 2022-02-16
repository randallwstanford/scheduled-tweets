Rails.application.routes.draw do
  # GET /about
  get "about", to: "about#index"

  # get "/", to: "main#index" OR
  root to: "main#index"
end
