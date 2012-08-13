FantasyCongress::Application.routes.draw do

  root :to => "teams#index"

  devise_for :users


  resources :representatives
  resources :bills
  resources :teams
end
