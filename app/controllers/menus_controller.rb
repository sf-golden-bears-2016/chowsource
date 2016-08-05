class MenusController < ApplicationController
	def create
    user = current_user
    recipe = Recipe.find(params[:id])
    user.featured_recipes << recipe
    @menu_recipes = user.featured_recipes
    render template: "/menus/show"
  end

  def show
  end

  def delete
  recipe = Recipe.find(params[:id])
  current_user.featured_recipes.delete(recipe)
  redirect_to "/users/menus"
  end

end

