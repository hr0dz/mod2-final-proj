class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
    @business = Business.find(params[:id])
  end


    private
   
    def business_params
        params.require(:business).permit(
          :name,
          :address,
          :neighborhood_id
        )
    end
end