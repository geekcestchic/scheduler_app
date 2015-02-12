class CoursesController < ApplicationController
  
  authorize_resource
  before_action :authenticate_user!, only: [:edit, :update]

  def index
    @courses = Course.all

    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)
    @event_strips = Course.event_strips_for_month(@shown_month)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
    redirect_to courses_path
    else 
      render 'edit'
    end
  end

  def course_params
    params.require(:course).permit(:name, :start_at, :end_at, :classroom_id, :image, :remote_image_url)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end
  
end
