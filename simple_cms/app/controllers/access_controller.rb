class AccessController < ApplicationController

  # display menu
  def menu
    @username = cookies[:username]
    @user_id = session[:user_id]
  end

  # display login form
  def new
  end

  # process login form
  def create
    # do login process here
    logger.info("*** Login process started")
    cookies[:username] = params[:username]
    session[:user_id] = 1483
    flash[:notice] = "Log in successful"
    redirect_to(menu_path)
  end

  # logout user
  def destroy
    # do logout process here
    redirect_to(login_path)
  end

end
