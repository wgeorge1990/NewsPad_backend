class UsersController < ApplicationController

    def index
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
           return "Me no save"
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            return "No update cupcake"
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password)
    end

end