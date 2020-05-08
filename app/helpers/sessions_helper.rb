module SessionsHelper

    def current_user
      if session[:user_id]
        User.find_by(id: session[:user_id])
      end
    end
  
    def signed_in?
      !!current_user
    end
  end