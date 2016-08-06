class LovesController < ApplicationController
	def create
    p @love = Love.new(recipe_id: params[:id], user_id: current_user.id)
    if @love.save
      flash.notice = "Love Created!"
      redirect_to recipes_path
    else
      redirect_to recipes_path
    end
  end

  def destroy
    @love = Love.find_by(recipe_id: params[:id], user_id: current_user.id)
    flash.notice = "Love deleted!"
    @love.destroy
    redirect_to recipes_path
  end

end

