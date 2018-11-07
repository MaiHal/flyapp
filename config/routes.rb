Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy" 
  end

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
