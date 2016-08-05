class MenusController < ApplicationController
	def create
    user = current_user
    recipe = Recipe.find(params[:id])
    user.menu_recipes << recipe
		redirect_to "/users/menu"
	end

	def show
	end

end

