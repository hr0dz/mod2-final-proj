class SessionsController < ApplicationController
  include SessionsHelper
    
  def new
  end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to user
        else
          flash[:message] = "wah wah wah"
          redirect_to login_path
        end
    end


      def delete
        session[:user_id] = nil
        redirect_to neighborhoods_path
    end
end