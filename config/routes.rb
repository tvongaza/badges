Badges::Application.routes.draw do
  devise_for :users
  get "home/index"
  get '/signout' => 'sessions#destroy', as: :signout
  get '/signet/google/auth_callback' => 'sessions#create'
  root to: 'home#index'
end
