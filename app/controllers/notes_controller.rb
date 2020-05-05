class NotesController < ApplicationController

    def index 
        @notes = Note.all 
    end 

    def show 
        @note = Note.find(params[:id])
    end 

    def new 
        @note = Note.new
    end 

    def create 
        @note = Note.create()
    end 


    private

    def note_params
        params.require(:note).permit(
          :name,
          :user_id,
          :business_id,
          :content
          :title
        )
    end

end