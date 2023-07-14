class SessionsController < ApplicationController
    skip_before_action :redirect_unlogged_user, only: %w[new create]
    before_action :redirect_logged_user, only: %w[new create]

    def new
        @user = User.new
    end

    def create
        @user = User.find_by_username(params[:user][:username])
        if @user&.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            @user = User.new
            @message = "Wrong credentials."
            render :new, status: :unprocessable_entity
        end
    end

    private 

    def redirect_logged_user
        redirect_to root_path if session[:user_id]
    end
end
