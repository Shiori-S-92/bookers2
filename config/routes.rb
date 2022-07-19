Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  resources :books, only: [:new, :index, :show]

  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:show, :edit]

end
