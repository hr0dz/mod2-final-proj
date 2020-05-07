class BusinessesController < ApplicationController
  include SessionsHelper
  before_action :authorize!, only: [:index, :new, :create, :edit, :update, :show]

  def index
    @businesses = Business.all
  end

  def show
    @business = Business.find(params[:id])
    # @notes = @business.notes.find(params[:id])
    @comments = Comment.where(note_id: @note).order("created_at Desc")
  end


    private
   
    def business_params
        params.require(:business).permit(
          :name,
          :address,
          :neighborhood_id
        )
    end

    def authorize!
      unless session[:user_id]
        flash[:message] = "no way jose"
        redirect_to login_path
      end
  end 
end