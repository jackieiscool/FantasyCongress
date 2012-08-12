FantasyCongress::Application.routes.draw do
  root :to => "caucuses#index"

  devise_for :users

  resources :caucuses
end
