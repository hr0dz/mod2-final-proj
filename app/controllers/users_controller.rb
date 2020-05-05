class UsersController < ApplicationController

    private

    def user_params
        params.require(:user).permit(
          :full_name,
          :email,
          :password
        )
    end
end