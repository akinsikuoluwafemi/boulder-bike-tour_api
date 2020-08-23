class ApplicationController < ActionController::API


    def render_error(status, title )
        render :status
    end
end
