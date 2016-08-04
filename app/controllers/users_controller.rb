class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @recipes = Recipe.where(user_id: params[:id])
    @loves = Love.where(user_id: params[:id])
  end
end
