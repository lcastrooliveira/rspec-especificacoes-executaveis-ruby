Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artigos, only: [:show, :create]
  resources :pokemons, only: [:update, :index]
end
