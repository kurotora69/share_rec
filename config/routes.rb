Rails.application.routes.draw do
  devise_for :users
  root to: "recreations#index"
  resources :recreations, only: :index
end
