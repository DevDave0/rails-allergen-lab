Rails.application.routes.draw do
  resources :allergens
  resources :users
  resources :recipes
  resources :ingredient_recipes
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
