Rails.application.routes.draw do
  namespace :api do
    get 'issues/index'
  end

  # React Application
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
  