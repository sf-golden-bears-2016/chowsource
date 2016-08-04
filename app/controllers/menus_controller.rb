class MenuController < ApplicationController
	def index
		@menus = Menu.all.order("created_at DESC")
	end

	def new
	end

	def create
		@menu = Menu.new(menu_params)
		@menu.save

		redirect_to @menu
	end

	def show
		@menu = Menu.find(menu_params)
	end

	def edit
		@menu = Menu.find(menu_params)
	end

	def update
		@menu = Menu.find(menu_params)
		@menu.update(menu_params)
		redirect_to recipe_path(@menu)
	end

	def destroy
		@menu = Menu.find(menu_params)
		@menu.destroy()
		redirect_to(:root)
	end

	private

	def menu_params
		params.require(:menu).permit(:user_id)
	end
end

