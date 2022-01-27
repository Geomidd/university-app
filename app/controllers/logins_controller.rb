class LoginsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]

  def new
  end

  def create
    student = Student.find_by(email: session_params[:email].downcase)
    if student && student.authenticate(session_params[:password])
      flash[:notice] = "You have successfully logged in"
      session[:student_id] = student.id
      redirect_to student
    else
      flash.now[:alert] = "Something was wrong with your login information"
      render :new
    end
  end
  
  def destroy
    session[:student_id] = nil
    flash[:notice] = "You have successfully logged out"
    redirect_to root_path
  end
  
  private

  def session_params
    params.require(:logins).permit(:email, :password)
  end
end