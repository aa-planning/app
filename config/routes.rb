# frozen_string_literal: true

Rails.application.routes.draw do
  # Devise Authentication
  devise_for :users,
    path: "api/auth",
    path_names: {
      sign_in: "login",
      sign_out: "logout",
      registration: "signup",
    },
    controllers: {
      sessions: "users/sessions",
      registrations: "users/registrations",
    }

  # API Documentation
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"

  namespace :api do
    resources :issues, only: [:index]
    resources :me, only: [:index]
  end

  # React Application
  root "homepage#index"
  get "/app/*path" => "homepage#index"
end
