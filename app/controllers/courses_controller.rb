class CoursesController < ApplicationController
  
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    course = Course.new(course_params)

    if course.save
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
    params.require(:course).permit(:name, :start_at, :end_at, :classroom_id)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end
  
end
