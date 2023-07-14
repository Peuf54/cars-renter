class UsersController < ApplicationController
    skip_before_action :redirect_unlogged_user, only: %w[new create]
    
    def new

    end

    def create

    end
end
