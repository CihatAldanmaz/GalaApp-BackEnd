Rails.application.routes.draw do
  resources :playersquads, only:[:show, :create, :index]
  resources :players, only:[:show, :index]
  resources :squads, only: [:show, :create, :index, :destroy]
  resources :users, only: [:show, :create, :index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tokens, only: [:create]
end

