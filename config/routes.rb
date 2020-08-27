Rails.application.routes.draw do
  resources :clubs
  resources :leagues

  root 'randomizer#index'

  resources :randomizer, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
