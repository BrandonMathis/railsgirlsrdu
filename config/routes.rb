Twitter::Application.routes.draw do
  root 'tweets#index'

  resources :tweets, only: [:new, :index, :create]

  devise_for :users
end
