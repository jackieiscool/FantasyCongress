FantasyCongress::Application.routes.draw do

  root :to => "leagues#index"
  match 'rep_object'  => "teams#return_reps"
  devise_for :users
  resources :representatives
  resources :bills
  resources :teams, only: [:show, :edit, :update, :destroy]  do
    resources :positions
  end

  resources :leagues do
    resources :teams, only: [:index, :new, :create]
  end

end
