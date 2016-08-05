class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params.merge(user_id: current_user.id))
    if @recipe.save
      flash.notice = "Recipe '#{@recipe.name}' Created!"
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def destroy
    @recipe = recipe.find(params[:id])
    flash.notice = "Recipe '#{@recipe.name}' deleted!"
    @recipe.destroy
    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    flash.notice = "Recipe '#{@recipe.name}' Updated!"
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :prep_time, :cook_time, :ingredients, :price, :description, :directions, :servings, :course, :image, :user_id)
  end
end
