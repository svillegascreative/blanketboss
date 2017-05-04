Rails.application.routes.draw do

  root "pages#home"

  # pages
  get "about" => "pages#about", as: "about"
  get "contact" => "pages#contact", as: "contact"
  get "search" => "pages#search"

  resources :blankets

  # users & sessions
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'
  resources :password_resets, only: [:new, :create, :edit, :update]

end
