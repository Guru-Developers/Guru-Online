class TeamApplicationsController < ApplicationController
  def index
    @applications = TeamApplication.all
  end

  def new
    @application = TeamApplication.new
  end

  def create
    @application = TeamApplication.new(application_params)
    if @application.save
      NotificationMailer.application(@application).deliver_now
      flash.now[:success] = "Application submitted"
    end
    render 'new'
  end

  def show
    @application = TeamApplication.find(params[:id])
  end

  private
    
    def application_params
      params.require(:team_application).permit(:first_name, :last_name, :email, :date_of_birth, :attends_unc, :github_url, :linkedin_url, :website_url, :resume, :cover_letter)
    end
end
