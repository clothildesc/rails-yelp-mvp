Rails.application.routes.draw do
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[create]
  end

  get "up" => "rails/health#show", as: :rails_health_check

end
