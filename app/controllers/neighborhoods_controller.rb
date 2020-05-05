class NeighborhoodsController < ApplicationController

    private
    
    def neighborhood_params
        params.require(:neighborhood).permit(
          :name
        )
    end
end