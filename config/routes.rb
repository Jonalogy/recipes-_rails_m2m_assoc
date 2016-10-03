Rails.application.routes.draw do

  resources :ingredients

  resources :courses

  resources :recipes

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
