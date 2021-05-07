Rails.application.routes.draw do
  devise_for :accounts

  get "/browse" => "browse#browse", as: :browse
  post "/approve/:id" => "browse#approve", as: :approve
  post "/decline/:id" => "browse#decline", as: :decline



  root to: "public#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
