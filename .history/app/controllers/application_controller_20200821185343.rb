class ApplicationController < ActionController::API


    def render_error(status, title, details = nil)
        render :status
    end
end
