Rails.application.routes.draw do
  root "home#index"

  get "/auth/facebook/callback" => "sessions#create"
end
