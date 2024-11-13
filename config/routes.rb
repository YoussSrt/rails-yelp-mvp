Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

    # Routes pour les restaurants et les avis associés
  resources :restaurants do
      # Routes pour les avis d'un restaurant spécifique qui viennent se nester à la page du restaurant
    resources :reviews, only: [:new, :create]
  end
end

  # Defines the root path route ("/")
  # root "posts#index"
