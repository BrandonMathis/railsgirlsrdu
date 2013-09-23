Twitter::Application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets, only: [:new, :index, :create]
  get 'users/:id' => 'users#show', as: 'user'
end
