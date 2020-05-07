class UsersController < ApplicationController
    def index
      @user = User.all
    end

    def new
        @user = User.new
        @neighborhoods = Neighborhood.all
    end

    def create
        @user = User.new(user_params)
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
end
