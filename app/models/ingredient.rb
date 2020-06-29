class Ingredient < ApplicationRecord
    has_many :ingredient_recipes
    has_many :recipes, through: :ingredient_recipes
    has_many :allergens 
    has_many :users, through: :allergens
end
