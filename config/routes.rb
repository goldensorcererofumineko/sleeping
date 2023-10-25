Rails.application.routes.draw do
  devise_for :users
  root to: 'sleeps#index'
  resources :sleeps do
    resources :sleep_statistics,only: [:show]
  end
end