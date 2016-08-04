class SessionsController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    token = auth_hash.credentials.token
    name = auth_hash.info.name
    pic = auth_hash.info.image
    uid = auth_hash.uid
    email = auth_hash.info.email

    user = User.create!(token: token, name: name, pic: pic, uid: uid, email: email)
    session[:id] = user.id
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
