class BusinessesController < ApplicationController
  include SessionsHelper
  before_action :authorize!, only: [:index, :show]

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
      unless signed_in?  
        flash[:message] = "Must log in first!"
        redirect_to login_path
      end
  end 
end