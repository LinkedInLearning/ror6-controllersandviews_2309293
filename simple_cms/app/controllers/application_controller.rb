class ApplicationController < ActionController::Base

  layout 'application'

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

    def render_404
      filepath = Rails.root.join('public', '404.html')
      render(file: filepath, status: 404, layout: false) and return
    end

end
