class CommentsController < ApplicationController
	def create
    @blogspot = Blogspot.find(params[:blogspot_id])
    @comment = @blogspot.comments.create(params[:comment])
    redirect_to blogspot_path(@blogspot)
  end
  def destroy
    @blogspot = Blogspot.find(params[:blogspot_id])
    @comment = @blogspot.comments.find(params[:id])
    @comment.destroy
    redirect_to blogspot_path(@blogspot)
  end
end
