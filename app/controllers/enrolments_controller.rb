class EnrolmentsController < ApplicationController

  def index
  end

  def new
    @enrolment = Enrolment.new
  end

  def create
    @enrolment = Enrolment.new(enrolment_params)
    if user_signed_in?
      @enrolment.user_id = current_user.id
      if @enrolment.save
        redirect_to enrolments_path
      else
        render 'new'
      end
    else
      redirect_to new_user_session_path
    end
    
  end

  def enrolment_params
    params.require(:enrolment).permit(:user_id, :course_id)
  end
end