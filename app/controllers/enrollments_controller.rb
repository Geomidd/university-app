class EnrollmentsController < ApplicationController
  def create
    course_to_add = Course.find(enrollment_params[:course_id])
    unless current_user.courses.include?(course_to_add)
      Enrollment.create(course: course_to_add, student: current_user)
      flash[:notice] = "You have successfully enrolled in #{course_to_add.name}"
      redirect_to current_user
    else
      flash[:alert] = "Something was wrong with your enrollment"
      redirect_to root_path
    end
  end

  private
  
  def enrollment_params
    params.permit([:course_id])
  end
end