class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :set_username
  before_action :set_language

  protected

    def set_username
      @username = cookies[:username]
    end

    def set_language
      @language = cookies[:language]
    end

    def confirm_logged_in
      if session[:user_id].present?
        return true
      else
        flash[:notice] = 'Please log in'
        redirect_to(login_path)
      end
    end

end
