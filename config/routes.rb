Rails.application.routes.draw do
  get 'contacts/new'
  get 'offers', to: 'pages#offers'
  resources :categories, only: [:new, :create, :index, :edit, :update, :show]
  resources :subcategories, only: [:new, :create, :index, :edit, :update]
  resources :treatments, only: [:new, :create, :index, :edit, :update]
  resources :contacts, only: [:new, :create]
  resources :vouchers, only: [:show, :create] do
    resources :payments, only: :new
  end
  devise_for :users
  resources :vouchers, only: [:show, :create]
  root to: 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
