module SessionsHelper
  def login(user)
    session[:id] = user.id
  end

  def logout
    session[:id] = nil
  end
end
