class AccessController < ApplicationController

  # display menu
  def menu
  end

  # display login form
  def new
  end

  # process login form
  def create
    # do login process here
    redirect_to(menu_path)
  end

  # logout user
  def destroy
    # do logout process here
    redirect_to(login_path)
  end

end
