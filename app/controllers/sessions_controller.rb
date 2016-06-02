class SessionsController < ApplicationController
  def create
    user = User.find_by_credentials(params[:session][:email], params[:session][:password])
    # fail
    if user.nil?
      redirect_to new_session_url
    else
      login(user)
      redirect_to user_url(user)
    end
  end

  def new
    render :new
  end

  def destroy
    # fail
    logout
    flash[:error] = "You're now signed out. Thanks, and come back soon!"
    redirect_to new_session_url
  end
end
