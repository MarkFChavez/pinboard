Rails.application.routes.draw do
  root "home#index"

  get "/auth/facebook/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: :logout

  resource :dashboard, only: [:show]
end
