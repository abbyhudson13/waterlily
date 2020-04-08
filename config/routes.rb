Rails.application.routes.draw do
  resources :categories, only: [:new, :create, :index, :edit, :update]
  resources :subcategories, only: [:new, :create, :index, :edit, :update]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
