class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        "/user/#{current_user.id}"
    end
end
