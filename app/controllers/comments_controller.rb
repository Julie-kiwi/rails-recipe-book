class CommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new(comment_params)
    @comment.recipe = @recipe
    if @comment.save
      redirect_to recipe_path(@recipe)
    else
      @dose = Dose.new
      render 'recipes/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@comment.recipe)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :recipe_id)
  end
end
