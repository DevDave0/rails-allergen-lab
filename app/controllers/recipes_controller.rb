class RecipesController < ApplicationController

    def index 
        @recipes = Recipe.all
    end 

    def show  
        find_recipe
    end 

    def new 
        @recipe = Recipe.new
    end 

    def create 
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end 

    def edit  
        find_recipe
    end 

    def update 
        find_recipe 
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end 
    
    def destroy 
        find_recipe 
        @recipe.destroy 
        redirect_to recipes_path
    end 


    private 

    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end 

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end 
end
