class NotesController < ApplicationController

    def new 
        @note = Note.new
    end 

    def index 
        @notes = Note.all 
    end 

    def show 
        @note = Note.find(params[:id])
    end 

  def create
    @note = Note.create(note_params)
    @business = Business.find(params[:id])
    redirect_to business_path(@business)
  end

    private

    def note_params
        params.require(:note).permit(
          :name,
          :user_id,
          :business_id,
          :content,
          :title
        )
    end

end