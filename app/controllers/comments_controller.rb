
class CommentsController < ApplicationController 
    before_action :find_note
    before_action :find_comment, only: [:destroy, :edit, :update , :comment_owner]
    before_action :comment_owner, only: [:destroy, :edit, :update]
    include SessionsHelper



    def create
        @note = Note.find(params[:note_id])
        @current_user = User.find(session[:user_id])
        @comment = @note.comments.create(params[:comment].permit(:message))
        @comment.user_id = @current_user.id
        @comment.save

        if @comment.save
            redirect_to business_path(@note.business)
        end
    end 

    def  destroy
        @comment.destroy
        redirect_to  business_path(@note.business) 
    end

    def edit
        find_note
        find_comment
    end

    def update
        @comment.update(params[:comment].permit(:message))
        redirect_to business_path(@note.business)

        # if @comment.update(params[:comment].permit(:message))
        #     redirect_to business_path(@note.business)
        # else
        #     render 'edit'
        # end
    end



    private

    def find_note
        @note = Note.find(params[:note_id])
    end 

    def find_comment
        @comment = @note.comments.find(params[:id])
    end

    def comment_owner
        unless current_user.id == @comment.user_id
            flash[:notice] = "You shall not pass!"
            redirect_to @note
        end
    end

  #def create
    #@note = Note.find_by(params[:id])
    #@comment = @notes.comment.build(comment_params)
   # @current = User.find(session[:user_id])
   # @comment.user = @current
   # @comment.save
    # if @comment.save
    #   redirect_to notes_path
    # else
    #   render :new
    # end

 # end

  #def update
   # @comment = Comment.find_by(:id)
   # @comment = Comment.update(params.require(:comment).permit(:name, :age))
    #redirect_to_ path 
  #end

  #def destroy
    #@comment = Comment.find_by(:id)
   # @comment.destroy
   # redirect_to_ path
  #end


end
