class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash.notice = "You remembered your password #{@user.username}"
      redirect_to profile_path
    else
      flash.now[:notice] = "Hacker Stinnette Detected."
      render :new
    end
  end

  def destroy
    session.clear
    flash.notice = "Successfully logged out. Why you leave? :("
    redirect_to root_path
  end
end
