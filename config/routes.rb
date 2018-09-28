Rails.application.routes.draw do
  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
end
