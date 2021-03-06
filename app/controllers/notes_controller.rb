class NotesController < ApplicationController
    include SessionsHelper
    #before_filter own_note, only: [:edit, :update]
    before_action :authorize!, only: [:index, :new, :create, :edit, :update, :show]
 

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
    
    def edit
      @note = Note.find(params[:id])

    end

    def update
      @note = Note.find(params[:id])
      @note.assign_attributes(note_params)
      @note.save!
      redirect_to business_path(@note.business)
    end

    def delete
      @note = Note.find(params[:id])
      @note.destroy
      redirect_to business_path(@note.business)
    end


  def create
    @business = Business.find(params[:business_id])
    @note = @business.notes.build(note_params)
    @current = User.find(session[:user_id])
    @note.user = @current
    @note.save
    if @note.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

    #def own_note
    #unless current_user == @note.user
    #redirect_to(@note, notice: "You cannot edit this note")
    #end
    #end

    private

    def note_params
        params.require(:note).permit(
          :category,
          :content,
          :title
        )
    end

    def authorize!
        unless signed_in?
          flash[:message] = "Must log in first!"
          redirect_to login_path
        end
    end 

end

