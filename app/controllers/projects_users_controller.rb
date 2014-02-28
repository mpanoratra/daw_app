class ProjectsUsersController < ApplicationController
  before_action :set_projects_user, only: [:destroy]

  def destroy
    project = @projects_user.project
    @projects_user.destroy
    respond_to do |format|
      format.html { redirect_to project}
      format.json { head :no_content }
    end
  end

  private
  def set_projects_user
    @projects_user = ProjectsUser.find(params[:id])
  end

end
