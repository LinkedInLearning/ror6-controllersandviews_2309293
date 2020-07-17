class ApplicationController < ActionController::Base


  protected

    def set_username
      @username = cookies[:username]
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
