class ApplicationController < ActionController::API


    def render_json_error(status, title, details = nil)
        error = {
            title: tit
        }
        render json: 
    end
end
