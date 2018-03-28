Rails.application.routes.draw do
  resources :activities, only: [:index]
  resources :shares, only: [:index, :show]
  resources :posts, only: [:index, :show]
end
