class AccessController < ApplicationController

  before_action :confirm_logged_in, :except => [:new, :create]

  # display menu
  def menu
    @user_id = session[:user_id]
  end

  # display login form
  def new
  end

  # process login form
  def create
    # do login process here
    logger.info("*** Login User #{params[:username]}")
    cookies[:username] = params[:username]
    session[:user_id] = 1483
    cookies[:language] = 'en'
    flash[:notice] = "Log in successful"
    redirect_to(menu_path)
  end

  # logout user
  def destroy
    # do logout process here
    logger.info("*** Logout User #{session[:user_id]}")
    session[:user_id] = nil
    redirect_to(login_path)
  end

end
