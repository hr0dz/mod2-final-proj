class BusinessesController < ApplicationController

    private
   
   
    def business_params
        params.require(:business).permit(
          :name,
          :address,
          :neighborhood_id
        )
    end
end