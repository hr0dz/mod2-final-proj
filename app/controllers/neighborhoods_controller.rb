class NeighborhoodsController < ApplicationController

    
  def index
    @neighborhoods = Neighborhood.all
  end
  
  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
  
  
  
  private
    
    def neighborhood_params
        params.require(:neighborhood).permit(
          :name
        )
    end
end