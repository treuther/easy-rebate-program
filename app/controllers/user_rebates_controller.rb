class UserRebatesController < ApplicationController

    before_action :redirect_if_not_logged_in

    def index
        # @user_rebates = User.find_by(username: params[:username])
        @rebates = Rebate.all
        # @user = User.find_by(user_id: params[:user_id])
    end
end
