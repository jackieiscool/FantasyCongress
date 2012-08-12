FantasyCongress::Application.routes.draw do
  get "representatives/index"

  get "representatives/new"

  get "representatives/create"

  get "representatives/edit"

  get "representatives/update"

  get "representatives/destroy"

  get "bills/index"

  get "bills/new"

  get "bills/create"

  get "bills/edit"

  get "bills/update"

  get "bills/destroy"

  get "representative/index"

  get "representative/new"

  get "representative/create"

  get "representative/edit"

  get "representative/update"

  get "representative/destroy"

  root :to => "caucuses#index"

  devise_for :users

  resources :caucuses
end
