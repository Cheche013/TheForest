Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Health check (GET /up)
  get "up" => "rails/health#show", as: :rails_health_check

  # Root one-page
  root "pages#the_forest"
end
