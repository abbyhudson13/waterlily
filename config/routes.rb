Rails.application.routes.draw do
  get "contacts/new"
  get "offers", to: "pages#offers"
  get "dashboard", to: "pages#dashboard"
  resources :categories, only: [:new, :create, :index, :edit, :update, :show], param: :name
  resources :subcategories, only: [:new, :create, :index, :edit, :update]
  resources :treatments, only: [:new, :create, :index, :edit, :update, :destroy] do
    post :deactivate, on: :member
    post :activate, on: :member
  end
  resources :contacts, only: [:new, :create]
  resources :vouchers, only: [:new, :show, :create, :index, :edit, :update] do
    resources :payments, only: :new
  end
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: "pages#home"
  mount StripeEvent::Engine, at: "/stripe-webhooks"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
