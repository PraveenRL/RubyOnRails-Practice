class LoginController < ApplicationController

    def index
    end

    def new
        @login = User.new
    end

    def create
        @login = User.new (user_params)

        if @login.save
            redirect_to user_register_url
        else
            redirect_to login_index_url
        end
    end

    private
    def user_params
        params.require(:user).permit!
    end

end
