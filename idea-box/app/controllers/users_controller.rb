class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to "/profile"
  end

  def show
    if current_user
      @user = current_user
      @ideas = @user.ideas
    else
      render plain: "FORBIDDEN. Hacker Stinnette Detected"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
