Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#index"

  # pages
  get "/about" => "pages#about", as: "about"
  get "/search" => "pages#search"

  # blankets
  get "/make_list" => "blankets#make_list"
  get "/list" => "blankets#list"

  resources :blankets
  resources :users, except: :index

end
