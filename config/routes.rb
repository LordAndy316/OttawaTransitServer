Rails.application.routes.draw do
  root "stops#index"
  get "/stops", to: "stops#index"
  get "/stops/:id", to: "stops#show"
end
