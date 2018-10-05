Rails.application.routes.draw do
  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
  get "/aircraft/:id" => "aircrafts#show"
  get "/reports" => "reports#index"
  get "/report/:id" => "reports#show"
end
