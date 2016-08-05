class MenusController < ApplicationController
	def create
    user = current_user
    recipe = Recipe.find(params[:id])
    user.featured_recipes << recipe
    redirect_to "/users/menus"
  end

  def show
    @menu_recipes = current_user.featured_recipes
  end

  def delete
    recipe = Recipe.find(params[:id])
    current_user.featured_recipes.delete(recipe)
    redirect_to "/users/menus"
  end

end

