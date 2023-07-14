class ApplicationController < ActionController::Base
    before_action :redirect_unlogged_user

    private

    def redirect_unlogged_user
        redirect_to new_session_path unless session[:user_id]
    end
end
