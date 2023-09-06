Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pharmacies, only: %i[index show]
  resources :reservations, only: %i[create show]
  resources :medicines, only: %i[index show]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
