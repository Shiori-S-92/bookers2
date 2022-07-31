Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"

  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]

  resources :users, only: [:create, :index, :show, :edit, :update]

  # patch '/books/:id' => 'books#update', as: 'update_book'

end
