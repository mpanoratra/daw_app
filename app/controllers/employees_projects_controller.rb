class EmployeesProjectsController < ApplicationController
  before_action :set_employees_project, only: [:destroy]
  def destroy
    project = @employees_project.project
    @employees_project.destroy
    respond_to do |format|
      format.html { redirect_to project }
      format.json { head :no_content }
    end
  end

  private
  def set_employees_project
    @employees_project = EmployeesProject.find(params[:id])
  end
end
