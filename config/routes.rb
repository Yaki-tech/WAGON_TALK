Rails.application.routes.draw do
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Root
  root "decks#index"

  # Decks
  resources :decks, only: [:index, :show] do
    # Créer une session depuis un deck
    resource :session, only: [:create]
  end

  # Sessions (navigation dans les questions)
  resources :sessions, only: [:show], param: :token do
    member do
      post :next
      post :previous
      post :shuffle
    end
  end

  # Favoris
  resources :favorites, only: [:index, :create, :destroy]
end
