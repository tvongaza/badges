Badges::Application.routes.draw do
  devise_for :users
  with_options only: [:index, :new, :create, :destroy] do |wo|
    wo.resources :awards, controller: :recognitions
    wo.resources :recommendations, controller: :recognitions
    wo.resources :recognitions
  end
  resources :badges
end
