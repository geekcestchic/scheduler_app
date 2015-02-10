class RegistrationsController < ApplicationController

  def index
  end

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.user_id = current_user.id
    if @registration.save
      redirect_to registrations_path
    else
      render 'new'
    end
  end

  def registration_params
    params.require(:registration).permit(:user_id, :course_id)
  end
end