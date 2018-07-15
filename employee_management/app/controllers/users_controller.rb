class UsersController < ApplicationController
    def new
        
    end

    def search
        console.log(params[:user][:name])
        @user = User.find_by(name: params[:name])
        console.log(@user.name)
        redirect_to user_path(@user)
    end

    def show
        @user = User.find (params[:id])
    end


end
