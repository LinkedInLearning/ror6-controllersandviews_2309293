class AccessController < ApplicationController

  # display menu
  def menu
    @username = cookies[:username]
  end

  # display login form
  def new
  end

  # process login form
  def create
    # do login process here
    cookies[:username] = params[:username]
    redirect_to(menu_path)
  end

  # logout user
  def destroy
    # do logout process here
    redirect_to(login_path)
  end

end
