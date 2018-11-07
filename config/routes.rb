Rails.application.routes.draw do
  devise_for :users
  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
  get "/aircraft/:id" => "aircrafts#show"
  get "/reports" => "reports#index"
  get "/report/:id" => "reports#show"
  get "/signup" => "users#new"
  post "/users/create" => "users#create"
  get "user/:id" => "users#detail"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
end
