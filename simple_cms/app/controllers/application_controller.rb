class ApplicationController < ActionController::Base


  protected

    def set_username
      @username = cookies[:username]
    end

end
