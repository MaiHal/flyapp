Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :omniauth_callbacks => 'users/omniauth_callbacks'
  } 

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
  get "/aircraft/:id" => "aircrafts#show"
  get "/aircrafts/new" => "aircrafts#new"
  post "/aircraft/create" => "aircrafts#create"
  get "/reports" => "reports#index"
  get "/report/:id" => "reports#show"
end
