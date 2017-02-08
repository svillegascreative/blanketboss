Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#index"

  resources :blankets

  # pages
  get "/about" => "pages#about", as: "about"

  # blankets
  get "/blankets" => "blankets#list"

  get "/search" => "pages#search"

end
