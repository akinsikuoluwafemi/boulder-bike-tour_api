class ApplicationController < ActionController::API


    def render_json_error(status, title, details = nil)
        error = {
            title: title,
            status: status
        }
        if !details.nil?
            
        render json: 
    end
end
