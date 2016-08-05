class SessionsController < ApplicationController
  def create
    token = auth_hash.credentials.token
    name = auth_hash.info.name
    pic = auth_hash.info.image
    uid = auth_hash.uid
    email = auth_hash.info.email

    user = User.find_by(uid: uid)
    if !user
      user = User.create(token: token, name: name, pic: pic, email: email, uid: uid)
    end
    session[:id] = nil
    login(user)
    redirect_to '/recipes'
  end

  def delete
    logout
    redirect_to '/'
  end


  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def login(user)
    session[:id] = user.id
  end

  def logout
    session[:id] = nil
  end


end
