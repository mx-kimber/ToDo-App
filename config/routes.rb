Rails.application.routes.draw do

get "/tasks" => "tasks#index"

resources :categories

end 