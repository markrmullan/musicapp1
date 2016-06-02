class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def login(user)
    session[:session_token] = user.reset_session_token
  end

  def logout
    current_user.reset_session_token
    session[:session_token] = nil
  end

  def current_user
    user = User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    if current_user
      flash[:error] = "You are already logged in"
      redirect_to user_url(current_user)
    else
      false
    end
  end

  def log_in_user!(user)
    session[:session_token] = user.reset_session_token
  end

end
