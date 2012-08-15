FantasyCongress::Application.routes.draw do

  get "polls/new"

  get "polls/create"

  get "polls/destroy"

  root :to => "teams#index"

  devise_for :users


  resources :representatives
  resources :bills
  resources :teams
end
