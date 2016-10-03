class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @ingredients = Ingredient.all
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save

    redirect_to @recipe, notice: 'Recipe recorded successfully!'
  end

  def update
  end

  def destroy
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :servings, :course_ids => [], :ingredient_ids => [])
  end

end
