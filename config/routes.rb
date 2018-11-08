Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
  end

  get "/" => "tops#index"
  get "/aircrafts" => "aircrafts#index"
  get "/aircraft/:id" => "aircrafts#show"
  get "/reports" => "reports#index"
  get "/report/:id" => "reports#show"
end
