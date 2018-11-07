Rails.application.routes.draw do
  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
  get "/aircraft/:id" => "aircrafts#show"
  get "/reports" => "reports#index"
  get "/report/:id" => "reports#show"
  get "/signup" => "users#new"
  post "/users/create" => "users#create"
  get "user/:id" => "users#detail"
  post "user/logout" => "users#logout"
end
