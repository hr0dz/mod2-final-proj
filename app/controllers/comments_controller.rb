class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @note = Note.find_by(params[:id])
  end

  def create
    @note = Note.find_by(params[:id])
    @comment = @notes.comment.build(comment_params)
    @current = User.find(session[:user_id])
    @comment.user = @current
    @comment.save
    # if @comment.save
    #   redirect_to notes_path
    # else
    #   render :new
    # end

  end

  def edit
    @comment = Comment.find_by(:id)
  end

  def update
    @comment = Comment.find_by(:id)
    @comment = Comment.update(params.require(:comment).permit(:name, :age))
    redirect_to_ path 
  end

  def destroy
    @comment = Comment.find_by(:id)
    @comment.destroy
    redirect_to_ path
  end

end
