Rails.application.routes.draw do
  resources :activities, only: [:index, :show, :destroy]
  resources :signups
  resources :campers, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
