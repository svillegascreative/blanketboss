Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"

  # pages
  get "about" => "pages#about", as: "about"
  get "contact" => "pages#contact", as: "contact"
  get "search" => "pages#search"

  resources :blankets
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'

end
