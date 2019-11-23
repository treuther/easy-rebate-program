class UsersController < ApplicationController

    def show
        @rebates = Rebate.find_by(:id => params[:id])
    end
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            if current_user.admin
                redirecto_to users_path(@user)
            else
            redirect_to user_path(@user)
            end
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :admin)
    end
    
end
