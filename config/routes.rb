Rails.application.routes.draw do
  devise_for :users
  root "sleeps#index"
  resources :sleeps do
  end
end
