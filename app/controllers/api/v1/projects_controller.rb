class Api::V1::ProjectsController < ApplicationController
  def create
    @project = Project.new(project_params)
    if @project.valid?
      @project.save
      @user = User.find(params[:project][:user_id])
      render json: @user
    else
      render json: {error: @project.errors.full_messages}, status: 400
    end
  end

  def show
    @project = Project.find_by(id: params[:id])
    if @project
      render json: @project
    else
      render json: {error: "Project does not exist"}, status: 400
    end
  end

  private
  def project_params
    params.require(:project).permit(:user_id, :title)
  end
end
