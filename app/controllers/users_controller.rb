class UsersController < ApplicationController
    include SessionsHelper
    before_action :authorize!, only: [:index]
    
    def index
      @user = User.all
    end

    def new
        @user = User.new
        @neighborhoods = Neighborhood.all
    end

    def create
        @user = User.new(user_params)
        @neighborhoods = Neighborhood.all
        if @user.save
          session[:user_id] = @user.id
          redirect_to @user
          #redirect_to neighborhoods_path
        else
          p @user.errors.full_messages
          render :new
        end
    end
      

    def show
        @user = User.find(params[:id])
        if session[:user_id]
        @current_user = User.find(session[:user_id])
        end
    end


    private

    def user_params
        params.require(:user).permit(
          :full_name,
          :email,
          :password,
          :password_confirmation,
          neighborhood_ids:[]
        )
    end

    def authorize!
        unless signed_in?
          flash[:message] = "Must log in first!"
          redirect_to login_path
        end
    end 
end
