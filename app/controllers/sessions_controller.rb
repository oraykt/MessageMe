class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

  def new

  end

  def register

  end

  def signup
    user = User.new(user_params)
    if user.save
      flash[:success] = 'You have successfully registered'
      redirect_to login_path
    else
      flash.now[:error] = 'There was something wrong with your signup information'
      render 'register'
    end
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully logged in'
      redirect_to root_path
    else
      flash.now[:error] = 'There was something wrong with your login information'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have successfully logged out'
    redirect_to login_path # maybe login_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def logged_in_redirect
    if logged_in?
      flash[:error] = "You're already logged in"
      redirect_to root_path
    end
  end

end