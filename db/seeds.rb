# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
IngredientRecipe.destroy_all 
Recipe.destroy_all 
User.destroy_all
Allergen.destroy_all


20.times do |x|
    User.create(
        name: Faker::Name.unique.name
    )
end 

100.times do |x|
    Ingredient.create(
        name: Faker::Food.unique.ingredient
    )
end

50.times do |x|
    Recipe.create(
        name: Faker::Food.unique.dish,
        user: User.all.sample
    )
end 


50.times do |x|
    IngredientRecipe.create(ingredient: Ingredient.all.sample, recipe: Recipe.all.sample)
end 

10.times do |x|
    Allergen.create(ingredient: Ingredient.all.sample, user: User.all.sample)
end 


