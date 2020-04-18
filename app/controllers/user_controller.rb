class UserController < ApplicationController
    
    def register
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.new (user_params)

        if @user.save
            redirect_to user_login_url
        else
            redirect_to user_register_url    
        end
    end

    private
    def user_params
        params.require(:user).permit!
    end

end
