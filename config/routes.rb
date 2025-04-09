Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :destinations, only: [:index, :show] do
    resources :attractions, only: [:index, :show]
    resources :reviews, only: [:create]
  end

  resources :attractions, only: [] do
    resources :reviews, only: [:create]
  end

  resources :itineraries do
    resources :itinerary_items, only: [:create, :update, :destroy]
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
