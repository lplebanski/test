class CommentsController < ApplicationController
  def create
  @question = Question.find(params[:question_id])
    params[:comment][:user_id] = current_user.id
  @comment = @question.comments.create(params[:comment])
  respond_to do |format|
 if @comment.save
    format.html { redirect_to question_path(@question), notice: 'Komentarz utworzony' }
  else
    format.html { redirect_to question_path(@question), notice: 'Komentarz  nie utworzony: Za malo znakow' }
      end
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @comment = @question.comments.find(params[:id])
    @comment.destroy
    redirect_to question_path(@question)
  end
end
