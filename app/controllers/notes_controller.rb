class NotesController < ApplicationController

    def new 
        @note = Note.new
        @business = Business.find(params[:business_id])
    end 

    def index 
        @notes = Note.all 
    end 

    def show 
        @note = Note.find(params[:id])
    end 

  def create
    @business = Business.find(params[:business_id])
    @note = @business.notes.build(note_params)
    @current = User.find(session[:user_id])
    @note.user = @current
    @note.save!
    redirect_to business_path(@business)
  end

    private

    def note_params
        params.require(:note).permit(
          :name,
          :category,
          :content,
          :title
        )
    end

end