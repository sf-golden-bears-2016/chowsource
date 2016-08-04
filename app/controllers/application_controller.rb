class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login
  skip_before_action :require_login, only: [:login, :create]




  private

  def require_login
    if current_user == nil
      redirect_to root_url
    end
  end

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end
  helper_method :current_user


end
