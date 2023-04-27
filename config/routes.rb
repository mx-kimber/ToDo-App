Rails.application.routes.draw do

get "/tasks" => "tasks#index"


get "/users" => "users#index"
end
