class SessionsController < ApplicationController
  def new
  end
  
  def create
      if params[:provider]
          @user = User.create_by_google_omniauth(auth)
          session[:user_id] = @user.id
      else
          #Try to find the user in the system
          @user = User.find_by(username: params[:user][:username])
          #did we find someone and did they put in the right password?
          #if @user && @user.authenticate(params[:user][:password])

          if @user.try(:authenticate, params[:user][:password])
              session[:user_id] = @user.id
              redirect_to user_path(@user)
          else
              flash[:error] = "Sorry, login info was incorrect. Please try again."
              redirect_to login_path
          end
      end
  end

  def omniauth
      @user = User.create_by_google_omniauth(auth)

      session[:user_id] = @user.id
      redirect_to user_path(@user)
  end

  private

  def auth
      request.env['omniauth.auth']
  end
end