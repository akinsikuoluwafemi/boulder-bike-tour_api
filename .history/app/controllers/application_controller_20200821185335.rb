class ApplicationController < ActionController::API


    def render_error(status, title, details )
        render :status
    end
end
