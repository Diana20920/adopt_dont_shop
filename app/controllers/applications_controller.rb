class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    # @application = Application.new
  end

  def create
    application = Application.new(application_params)
    if application.save
      redirect_to "/applications/#{application.id}"
    else
      flash[:alert] = "Form must be completed in order to submit the application. Please complete every field in the form."
      redirect_to "/applications/new"
    end
  end

  private
  def application_params
    params.permit(:name, :address, :city, :state, :zip, :description, :status)
  end
end