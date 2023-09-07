Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :pharmacies, only: %i[index show] do
    resources :reviews
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :reservation, only: %i[create]
  resources :medicines, only: %i[index show]

end
