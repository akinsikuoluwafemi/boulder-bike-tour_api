class ApplicationController < ActionController::API


    def render_json_error(status, title, details = nil)
        error = {
            title: title,
            status: status
        }
        render json: 
    end
end
