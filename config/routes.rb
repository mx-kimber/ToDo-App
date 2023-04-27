Rails.application.routes.draw do

get "/tasks" => "tasks#index"



resources :users

resources :categories

end 

