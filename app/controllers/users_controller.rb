class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to users_url
    else
      render :new
    end
  end

  def index
    render :index
  end

  def new
    render :new
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
