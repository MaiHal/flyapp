Rails.application.routes.draw do
  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
  get "/reports" => "reports#index"
end
