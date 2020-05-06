class SessionsController < ApplicationController
    def new
    end

    def create
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to neighborhoods_path
        else
          flash[:message] = "Invalid credentials"
          redirect_to login_path
        end
    end
end