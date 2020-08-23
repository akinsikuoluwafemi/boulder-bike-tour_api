class ApplicationController < ActionController::API


    def render_error(status, optio )
        render :status
    end
end
