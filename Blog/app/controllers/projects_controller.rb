class ProjectsController < ApplicationController
	def create
    @github = Github.find(params[:github_id])
    @project_url = @github.comments.create(params[:project])
    redirect_to github_path(@github)
  end
end
