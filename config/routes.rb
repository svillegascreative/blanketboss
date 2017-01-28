Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "blankets#index"

  get "blankets" => "blankets#index"

  post "blankets" => "blankets#create"
  get "blankets/new" => "blankets#new"

  get "blankets/:id" => "blankets#show"

end
