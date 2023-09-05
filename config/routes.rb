Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pharmacies, only: %i[index show] do 
    resources :reviews
  end

  resources :reviews
  resources :reservation, only: %i[create]
  resources :medicines, only: %i[index show]
end
