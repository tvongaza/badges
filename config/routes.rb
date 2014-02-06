Badges::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

  with_options only: [:index, :new, :create, :destroy] do |wo|
    wo.resources :awards, controller: :recognitions
    wo.resources :recommendations, controller: :recognitions
    wo.resources :recognitions
  end

  resources :users do
    collection do
      get :random_slide
    end
  end

  resource :slide_show, only: :show

  resources :badges
  resources :artworks, only: :show
  root to: "users#show"
end
