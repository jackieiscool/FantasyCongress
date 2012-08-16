FantasyCongress::Application.routes.draw do

  root :to => "teams#index"
  match 'rep_object'  => "teams#return_reps"
  devise_for :users
  resources :representatives
  resources :bills
  resources :teams   do
    resources :positions
  end


end
