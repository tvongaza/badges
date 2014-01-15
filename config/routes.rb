Badges::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  with_options only: [:index, :new, :create, :destroy] do |wo|
    wo.resources :awards, controller: :recognitions
    wo.resources :recommendations, controller: :recognitions
    wo.resources :recognitions
  end

  resources :badges
  root :to => "badges#index"
end
