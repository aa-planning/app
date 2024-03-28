Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    resources :issues, only: [:index]
  end

  # React Application
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
  